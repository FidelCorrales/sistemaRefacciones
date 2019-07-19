<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Autopartes extends CI_Controller{

    function __construct()
    {
        parent::__construct();
        $this->load->model('autopartes_m');
    }
    
    public function index(){

        //$this->load->model('Autopartes_model');
        $this->load->view('principal.html');
    }

    /////////////////Tipos/////////////////
    public function dame_tipo_autoparte(){
        echo("Método no implementado");
    }

    /////////////////Categorias/////////////////

    //Suspencion
    public function dame_aut_int(){
        $autoparte_suspension = $this->autopartes_m->obtenerAutoparteSuspension();
        if (!empty($autoparte_suspension)){
            echo '<pre>';
            print_r($autoparte_suspension);
            echo '</pre>';    
        }else{
            echo "No se encontraron autopartes de suspensión";
        }  
    }

    //Partes externas motor
    public function dame_aut_ext(){

    }
    
    //Frenos
    public function dame_frenos(){

    }

    //Herramienta
    public function dame_herramienta(){

    }

    //Accesorios
    public function dame_accesorios(){

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