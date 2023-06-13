<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class contactoController extends Controller{    
    public function __construct(){
        parent::__construct();
        $this->modelo=$this->loadModel('contacto','tienda');
        $this->view->template = 'store';
    }

    public function index(){
    }

    public function vistacontacto(){
        $this->view->rendering('contacto');
    }

	public function enviar_correo()
	{
        if(isset($_POST['nombre']) && isset($_POST['correo']) && isset($_POST['comentario']) && isset($_POST['asunto'])){
    
        $name = $_POST['nombre'];
        $email = $_POST['correo'];
        $comment = $_POST['comentario'];
        $subject = $_POST['asunto'];
    
            $mail = new PHPMailer(true);
    
            try {
                //Server settings
                $mail->SMTPDebug = 0;
                $mail->isSMTP(); //Send using SMTP
                $mail->Host       = 'mail.host.URL';
                $mail->SMTPAuth   = true; //Enable SMTP authentication
                $mail->Username   = 'user.mail'; //SMTP username
                $mail->Password   = 'user.pswd.mail'; //SMTP password
                $mail->SMTPSecure = 'ssl'; //Enable implicit TLS encryption
                $mail->Port       = 465; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
    
                //Recipients
                $mail->setFrom('mail.sender', $name);
                $mail->addAddress('mail.recipient');

                //Content
                $mail->isHTML(true); //Set email format to HTML
                $mail->Subject = 'Correo de contacto: '.$subject;
                $mail->Body    = 'nombre: '.$name.'<br/>Correo: '.$email.'<br/>Comentario: '.$comment;

                $mail->send();              
				echo 'Mensaje enviado con éxito.';
				
            } catch (Exception $e) {
                echo "Error: {$mail->ErrorInfo}";
            } 
            
            
        }
    }
    
}
?>