 <?php 

$server = 'localhost';
$username='root';
$password ='';
$database ='musculos';
$db=mysqli_connect($server, $username, $password, $database);
mysqli_query($db, "SET NAMES 'utf8'");

//iniciar la session
if(!isset($_SESSION)){
     session_start();
}

/*class conexion {
    private $conexcion;
    private $db;
    private $dbname="musculos"; 

    function __construct(){
        $this->conexcion();
    }

    public function conexcion (){

    $this->conexcion = mysqli_connect("localhost", "root", "");
    if ($this->conexcion ==0) Die("lo sentimos, no se puede conectar". mysqli_error());
    $this->db = mysql_select_db($dbname, $this->conexcion);
    if ($this->db ==0) Die("lo sentimos, no se puede conectar". $dbname);

    return true;
    }
    
    public function desconectar()
    {
        if($this->conectar->conexcion){
            mysql_close($this->conexcion);
        }
    }
       
    }
    
  */
/*
 class Conexion {
    private $hostname;
    private $database;
    private $username;
    private $password;
    private $conector;
    private $encad;

          function __construct(){
          	$this->Conexion();
          }
                    
         function Conexion() {
         	$this->hostname = "localhost";
			$this->database = "musculos";
			$this->username = "root";
			$this->password = "";                   
         }
         
         
         function conectar() {			
			$this->conector =mysqli_pconnect($this->hostname, $this->username, $this->password)	or trigger_error(mysqli_error(),E_USER_ERROR);
			mysqli_select_db($this->database, $this->conector);
         }

         function desconectar(){
         	mysqli_close ($this->conector);         	
         }
}
*/
?>
