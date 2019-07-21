<?php 

class Usuarios_m extends CI_Model {
	
	public function __construct() {
		parent::__construct();
    }
    
    /**
     * login: regresa el usuario de ese correo y contraseña
     */
	public function login($correo,$contraseña){
		$sql = "SELECT nombre,apaterno,amaterno,genero,telefono,correo FROM Usuario WHERE correo = '".$correo."' AND password='".$contraseña."'";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute[0];
		}else{
			return null;
		}
    }

    /**
     * Regresa todos lo usuarios de la base de datos
     */
    public function leerUsuarios(){
        $sql = "SELECT nombre,apaterno,amaterno,genero,telefono,correo FROM Usuario";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute;
		}else{
			return null;
		}
    }
    
}

?>
