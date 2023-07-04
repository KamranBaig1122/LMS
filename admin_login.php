<?php
include 'database_connection.php';
include_once 'function.php';
$message='';
$flag=true;
if(isset($_POST["login_button"]))
{
    $formdata=array();
    if(empty($_POST["admin_email"]))
    {
        $message.='<li>Email Address is Required</li>';
    }
    else
    {
        $formdata['admin_email']=$_POST['admin_email'];
    }
    if(empty($_POST['admin_password']))
    {
        $message.='<li>Password is Requird</li>';
    }
    else
    {
        $formdata['admin_password']=$_POST['admin_password'];
    }

    if($message=='')
    {
        $data =array(
            ':admin_email' => $formdata['admin_email']
        );
        $query="SELECT * FROM lms_admin WHERE admin_email=:admin_email";
        $statment=$connect->prepare($query);
        $statment->execute($data);
        if($statment->rowCount()>0)
        {
            foreach($statment->fetchAll() as $row)
            {
                if($row['admin_password']==$formdata['admin_password'])
                {
                    $_SESSION['admin_id']=$row['admin_id'];
                    if(isset($_SESSION['admin_id']))
                    {
                        $flag=false;
                        //include 'header.php';
                        include 'index_admin.php';
                    }
                    else
                    {
                        //flag=true;
                        //header('location:index_admin.php');
                    }
                }
                else
                {
                    $message .='<li>Wrong Password</li>';
                }
            }
        } 
        else
        {
            $message .='<li>Wrong Email Address</li>';
        }
    }

}

if($flag)
{
    $flag=false;
    include 'email_info.php';
}
else{
    include 'footer.php';
}
?>
