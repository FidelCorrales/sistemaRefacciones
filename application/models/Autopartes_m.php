<?php 

/**
* Guillermo Felix Serrano
* Temas Selectos de Base de Datos
* 21330115099
* 18-Julio-2019 21:53
*/
class Autopartes_m extends CI_Model {
	
	public function __construct() {
		parent::__construct();
	}

	public function prueba($correo,$contraseña){
		$sql = "SELECT nombre,apaterno,amaterno,genero,telefono,correo FROM Usuario WHERE correo = '".$correo."' AND password='".$contraseña."'";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute[0];
		}else{
			return null;
		}
	}

	public function obtenerAutoparteSuspension(){
		$sql = "SELECT * FROM Autoparte WHERE FK_TIPO_AUTOPARTES = '1' AND ROWNUM <=9";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute;
		}else{
			return null;
		}
	}

	public function obtenerFrenos(){
		$sql = "SELECT * FROM Autoparte WHERE FK_TIPO_AUTOPARTES = '2' AND ROWNUM <=9";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute;
		}else{
			return null;
		}
	}
	public function obtenerAutoparteExt(){
		$sql = "SELECT * FROM Autoparte WHERE FK_TIPO_AUTOPARTES = '3' AND ROWNUM <=9";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute;
		}else{
			return null;
		}
	}
	public function obtenerHerramientas(){
		$sql = "SELECT * FROM Autoparte WHERE FK_TIPO_AUTOPARTES = '4' AND ROWNUM <=9";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute;
		}else{
			return null;
		}
	}
	public function obtenerAccesorios(){
		$sql = "SELECT * FROM Autoparte WHERE FK_TIPO_AUTOPARTES = '5' AND ROWNUM <=9";
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
