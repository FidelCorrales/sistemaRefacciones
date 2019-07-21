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
    public function insertar_autoparte(){
        
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
            $this->load->view('principal.html',$data);
        }else{
            $msjResult = "No se logro leer en la base de datos, intenté de nuevo.";
            return $msjResult;
        }
    }

    //Actualizar
    public function actualizar_suspencion(){
        $actualizacion = $this->autopartes_m->actualizarAutoparte();
        $msjResult;
        if(!empty($actualizacion)){
            $msjResult = "Se logro actualizar la autoparte.";
            return $msjResult;
        }else{
            $msjResult = "Se logro actualizar, intenté de nuevo.";
            return $msjResult;
        }
    }

    //Eliminar 
    public function eliminar_autoparte(){
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

    /////////////////Categorias/////////////////

    //---Suspension---//
    public function dame_suspencion(){
        $categoria = $this->input->post('clave');
        $autoparte_suspension = $this->autopartes_m->obtenerAutoparteSuspension();
        if (!empty($autoparte_suspension)){ 
            $data['categoria'] = $autoparte_suspension;
            $this->load->view('principal',$data);
        }else{
             echo "No se encontraron autopartes de suspensión";
        }
    }

    //---Partes externas motor---//
    public function dame_aut_ext(){
        $autoparte_ext = $this->autopartes_m->obtenerAutoparteExt();
        if (!empty($autoparte_ext)){   
            $data['categoria'] = $autoparte_ext;
            $this->load->view('principal',$data);
        }else{
            $msjError; 
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
           echo "No se encontraron autopartes herramienta";
        } 
    }

    //---Accesorios---//
    public function dame_accesorios(){
        $autoparte_acce = $this->autopartes_m->obtenerAccesorios();
        if (!empty($autoparte_acce)){   
            $data['categoria'] = $autoparte_acce;
            $this->load->view('principal',$data);
        }else{
            echo "No se encontraron autopartes de accesorios";
        } 
    }

    /////////////////Autoparte/////////////////
    public function dame_autoparte($id){

        if(!$id) {
            //error 
        }

        $articulo = $this->refac_model->get($id);

        

        return null;
    }

    public function login(){
        //$form_data = $this->input->post();
        $correo = $this->input->post("correo");
        $contraseña = md5($this->input->post("contraseña"));
        $login = $this->autopartes_m->prueba($correo, $contraseña);
        if ($login>0){
            print_r($login);    
        }else{
            echo "No se encontro el Usuario";
        } 
    }

}


?>