
<?php
require APPPATH.'libraries/REST_Controller.php';
class Comx extends REST_Controller 
{
    public function __construct()
    {
         parent::__construct();
            $this->load->library('session');
         $this->load->helper('cookie');
    }
    
    function login_post()
    {    $email=$this->post("email");
        $phone=$this->post("phone");
       $name=$this->post("name");
       $pwd=md5($this->post("pwd"));
    $token=md5(uniqid($email, true));
     if(!($this->post('phone')and $this->post('pwd') ))
        {
            $this->response(NULL, 400);
            }
     else{
         if(!preg_match("/^[9,8,7]{1}[0-9]{9}$/",$phone))
         {
                         
            $this->response(array('error' => 'phone no must start with 9,8,7 and contain 10 digits'));
         }
        else{
      $result= $this->auth1->insert_log($email,$pwd,$phone,$name,$token);
            
        
      if($result === FALSE)
        {
            
            $this->response(array('status' => 'failed',"result"=>$result));
        }
    else
        {
            $this->response(array('status' => 'success',"result"=>$result));
        }
         
          }
     }
            
         
}
    function user_post()
    { 
         if(!($this->post('email')and $this->post('pwd') ))
         {
             //echo"dgdgjdgjdj";
             $this->response(NULL, 400);
         }
        $user = $this->auth1->login_log( $this->post('email'),md5($this->post('pwd')));
     
        if($user>0)
        {  //$xls=$this->auth1->login_show($this->post('email'));
           $rfg=$this->auth1->login_token($this->post('email'));
        //$this->load->helper("jwt");
         //echo $rfg[0]["token"];
        /*$i=1;
        foreach ($xls as $x)
        { 
            $g[]=array($i=>base_url($x["file"]));
            $i++;
        }*/
         $g=$this->post('email');
          $rt=JWT::encode($g,12245,"HS256");
           
         
  $this->response(array('status'=>'success',"result"=>true, "token"=>$rfg[0]["token"], "jwt"=>$rt));  
            
       
        }
        else{
           
            $this->response(array('status' => 'failed',"result"=>false));
        }
    }
    public function ret_post()
    {   
        //$ret=JWT::encode($g,1425,"HS256")
        // $ret=$this->post("jwt");
       $token=$this->post("token");
          //$rt1=JWT::decode( $ret,12245,true);
        $ret2=$this->auth1->ret_email($token);
       
        if(count($ret2)>0)
        {
            echo"red";
        $xls=$this->auth1->login_show($ret2[0]["email"]);
            if(time()>($ret2[0]["vaild"]))
            {
        
                $this->auth1->login_update($ret2[0]["email"]);
                $m=array('status'=>'failed',"result"=>false,'cause'=>"token is not valid" );
                $this->response($m);
            }
         else
             
        $i=1;
         foreach ($xls as $x)
        { 
            $g[]=array($i=>base_url($x["file"]));
            $i++;
        }
        
     
         $m=array('status'=>'success',"result"=>true,'doc'=>$g );
         $this->response($m);
          
       
    }
        else
        {
         
            $this->response(array('status' => 'failed',"result"=>false));
        }

    }
    public function logout_post()
    {
         $token=$this->post("token");
         $ret=$this->auth1->ret_email($token);
           if(count($ret)>0 && isset($token))
           {
        $this->auth1->login_update($ret[0]["email"]);
         
        $m=array('status'=>'success',"result"=>true,'codition'=>"logout" );
         $this->response($m);
    }
        else{
            $m=array('status'=>'failed',"result"=>false,'codition'=>"token not given" );
         $this->response($m);
        }
        
    }

}
