<?php
class Auth1 extends CI_model
{
 
   

    public function login($id,$pwd)
 { //$this->load->database();
$query = $this->db->get_where('admin', array('phone' => $id,"pwd"=> $pwd));
    return $query->num_rows();
   }
     public function show($id)
     {
         $this->db->select('doc');
         $que=$this->db->get_where('doc',array('phone'=>$id));
             return $que->result_array();
             
     }
    public function insert($phone,$name,$pwd,$doc)
    {
        $this->db->trans_start();
        $admin_data=array("phone"=>$phone,"name"=>$name,"pwd"=>$pwd);
        $doc_data=array("phone"=>$phone,"doc"=>$doc);
        $this->db->insert("admin",$admin_data);
        $this->db->insert("doc",$doc_data);

    if ($this->db->trans_status() === FALSE)
    {
 
    $this->db->trans_rollback();
        return FALSE;
      }
   else
   {
    $this->db->trans_commit();
       return TRUE;
    }
    }
    
    public function insert_log($email,$pwd,$ph,$name,$token)
    {
        //echo $ph;
        $admin_data=array("email"=>$email,"pwd"=>$pwd,"phone"=>$ph,"name"=>$name,"token"=>$token,"issue"=>time(),"vaild"=>(time()+60));
        //print_r($admin_data);
        if($this->db->insert("login",$admin_data))
        {
            //print_r($admin_data);
            return true;
        }
        else{
            return false;
        }
    }
    public function login_log($email,$pwd)
    {
         
$query = $this->db->get_where('login', array('email' => $email,"pwd"=> $pwd));
    return $query->num_rows();
   }
    
    public function login_show($email)
    {
        $que=$this->db->get_where('log_add',array('email'=>$email));
             return $que->result_array();
    }
    public function login_token($email)
    {
        $que1=$this->db->get_where('login',array('email'=>$email));
            return $que1->result_array();
    }
    public function ret_email($token)
    {
         $que2=$this->db->get_where('login',array('token'=>$token));
            return $que2->result_array();
    }
    public function login_update($email)
    {
        $data=array("token"=> md5(uniqid($email, true)),"issue"=>time(),"vaild"=>(time()+60));
        $this->db->where('email', $email);
         $this->db->update('login', $data); 
        

    }
    public function token_update($email)
    {
        $tok[]=array($email=> md5(uniqid($email, true)));
        return tok;
    }
    
    }

?>
