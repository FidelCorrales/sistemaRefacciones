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

	public function leerAutopartesNombre($producto){
		$sql = "SELECT * FROM Autoparte where UPPER(descripcion) like UPPER('%$producto%')";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute;
		}else{
			return null;
		}
	}

	public function nuevaAutoparte($id,$producto){
		$sql = "INSERT INTO Autoparte VALUES ($id,'{$producto[0]['marca']}','{$producto[0]['material']}',{$producto[0]['disponibilidad']},{$producto[0]['modelo']},{$producto[0]['precio']},'{$producto[0]['descripcion']}','{$producto[0]['compatibilidad']}',{$producto[0]['categoria']})";
		$execute = $this->db->query($sql);
		if($execute->num_rows()>0){
			$execute = $execute->result_array();
			return $execute;
		}else{
			return null;
		}
	}

	public function obtenerId($categoria){
		$sql = "SELECT id_autoparte FROM autoparte WHERE FK_TIPO_AUTOPARTES = $categoria AND ROWNUM<=1 ORDER BY id_autoparte DESC";
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
