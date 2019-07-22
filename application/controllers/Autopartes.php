<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Autopartes extends CI_Controller{

    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model('autopartes_m');
    }
    
    public function index(){
        //$categoria = $this->input->post('clave');
        $autoparte_suspension = $this->autopartes_m->obtenerAutoparteSuspension();
        if (!empty($autoparte_suspension)){
            $data['categoria'] = $autoparte_suspension;
            $this->load->view('principal',$data);
        }else{
             echo "No se encontraron autopartes de suspensión";
        }
        
    }

    //---CRUD---//
    //Crear
    /*public function insertar_autoparte(){
        
        $marca = $_POST['marca'];
        $costo = $_POST['costo'];
        $descripcion = $_POST['descripcion'];
        $compatibilidad = $_POST['compatibilidad'];
        $tipo = $_POST['tipo'];
        $unidad = $_POST['unidad'];

        $confirmacion = $this->autopartes_m->nuevaAutoparte($marca,$costo,$descripcion,$compatibilidad,$tipo,$unidad);
        if(!is_null($confirmacion)){
            return $confirmacion;
        }
        else{
            $msjError = "No se logro guardar en la base de datos, intenté de nuevo.";
            return $msjError;
        }
    }

    //leer
    public function leer_autopartes(){
        $autopartes = $this->autopartes_m->leerAutopartes();
        if(!empty($autopartes)){
            $data['autopartes'] = $autopartes;
            $this->load->view('principal',$data);
        }else{
            $msjResult = "No se logro leer en la base de datos, intenté de nuevo.";
            return $msjResult;
        }
    }

    //leer por id
    public function leer_autoparte($id){
        if(!is_null($id)){
            $autoparte = $this->autopartes_m->leerAutopartes($id);
            if(!empty($autoparte)){
                $data['autoparteid'] = $autoparte;
                $this->load->view('principal',$data);
            }else{
                $msjResult = "No se logro leer en la base de datos, intenté de nuevo.";
                return $msjResult;
            }
        }else{
            $msjResult = "Ingresar un Id valido.";
            return $msjResult;
        }
    }

    //leer por nombre
    public function leer_autoparte_nombre($nombre){
        if(!is_null($nombre)){
            $autoparte = $this->autopartes_m->leerAutopartesNombre();
            if(!empty($autoparte)){
                $data['autopartenombre'] = $autoparte;
                $this->load->view('principal',$data);
            }else{
                $msjResult = "No se logro leer en la base de datos, intenté de nuevo.";
                return $msjResult;
            }
        }else{
            $msjResult = "Ingresar un nombre valido.";
            return $msjResult;
        }
    }

    //Actualizar
    public function actualizar_suspencion($id){
        $actualizacion = $this->autopartes_m->actualizarAutoparte($id);
        if(!empty($actualizacion)){
            $msjResult = "Se logro actualizar la autoparte.";
            return $msjResult;
        }else{
            $msjResult = "Se logro actualizar, intenté de nuevo.";
            return $msjResult;
        }
    }

    //Eliminar 
    public function eliminar_autoparte($id){
        $confirmacion = $this->autopartes_m->eliminarAutoparte($id);
        if(!is_null($confirmacion)){
            return $confirmacion;
        }
        else{
            $msjError = "No se logro eliminar en la base de datos, intenté de nuevo.";
            return $msjError;
        } 
    }
    //---FIN CRUD---//

    //--Existencias--//
    public function existencias($id){
        if(!is_null($id)){
            $numExistencias = $this->autopartes_m->existencias($id);
            if( !empty($numExistencias) ){
                $data['existencias'] = $numExistencias;
                $this->load->view('principal',$data);
            }
            else{
                $msjResult = "Intente de nuevo.";
                return $msjResult;
            }
        }else{
            $msjResult = "Ingresar un id valido.";
            return $msjResult;
        }
    }*/
    //--Fin existencias--//

    /////////////////Categorias/////////////////

    //---Suspension---//
    public function dame_suspencion(){
        $autoparte_suspension = $this->autopartes_m->obtenerAutoparteSuspension();
        if (!empty($autoparte_suspension)){ 
            $data['categoria'] = $autoparte_suspension;
            $this->load->view('principal',$data);
        }else{
            //echo "No se encontraron autopartes de suspensión";
            $msjError = "No se encontraron suspensiones";
            return $msjError;
        }  
    }

    //---Partes externas motor---//
    public function dame_aut_ext(){
        $autoparte_ext = $this->autopartes_m->obtenerAutoparteExt();
        if (!empty($autoparte_ext)){   
            $data['categoria'] = $autoparte_ext;
            $this->load->view('principal',$data);
        }else{
            $msjError = "No se encontraron autopartes externas de motor";
            return $msjError;
        }  
    }
    
    //---Frenos---//
    public function dame_frenos(){
        $autoparte_freno = $this->autopartes_m->obtenerFrenos();
        if (!empty($autoparte_freno)){    
            $data['categoria'] = $autoparte_freno;
            $this->load->view('principal',$data);
        }else{
             echo "No se encontraron autopartes de frenos";
        }
    }

    //---Herramienta---//
    public function dame_herramienta(){
        $autoparte_herram = $this->autopartes_m->obtenerHerramientas();
        if (!empty($autoparte_herram)){   
       $data['categoria'] = $autoparte_herram;
            $this->load->view('principal',$data);
        }else{
           echo "No se encontraron herramientas";
        }
    }

    //---Accesorios---//
    public function dame_accesorios(){
        $autoparte_acce = $this->autopartes_m->obtenerAccesorios();
        if (!empty($autoparte_acce)){   
            $data['categoria'] = $autoparte_acce;
            $this->load->view('principal',$data);
        }else{
            echo  "No se encontraron accesorios";
        } 
    }

}
?>