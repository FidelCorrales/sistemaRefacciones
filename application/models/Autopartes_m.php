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
		$sql = "SELECT * FROM Autoparte WHERE FK_TIPO_AUTOPARTES = '1' AND ROWNUM <=5";
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
