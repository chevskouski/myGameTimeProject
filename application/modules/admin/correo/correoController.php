<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class correoController extends Controller{    
    public function __construct(){
        parent::__construct();
        $this->modelo=$this->loadModel('correo','admin');
        $this->view->template = 'admin';
    }

    public function index(){
    }

    public function correo_admin(){
        $this->view->rendering('correo');
    }

    public function enviar_correo(){
        if(isset($_POST['correo']) && isset($_POST['asunto']) && isset($_POST['comentario'])){
    
            $name = 'MyGameTime';
            $email = $_POST['correo'];
            $comment = $_POST['comentario'];
            $subject = $_POST['asunto'];
    
            $mail = new PHPMailer(true);
    
            try {
                $mail->SMTPDebug = 0;
                $mail->isSMTP(); //Send using SMTP
                $mail->Host       = 'mail.host.URL';
                $mail->SMTPAuth   = true; //Enable SMTP authentication
                $mail->Username   = 'user.mail'; //SMTP username
                $mail->Password   = 'user.pswd.mail'; //SMTP password
                $mail->SMTPSecure = 'ssl'; //Enable implicit TLS encryption
                $mail->Port       = 465; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
    
                $mail->setFrom('mail.sender', $name);
                $mail->addAddress($email); //Recipient
    
                //Content
                $mail->isHTML(true); //Set email format to HTML
                $mail->Subject = 'MyGameTime: '.$subject;
                $mail->Body    = 'Comentario: '.$comment;
                $mail->send();                
                echo 'correcto';
				
            } catch (Exception $e) {
                echo "Error: {$mail->ErrorInfo}";
            }
    
        }
    }
    
}
?>