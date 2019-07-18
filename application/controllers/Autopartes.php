<?php 

class Autopartes extends CI_Controller{
    
    public function index(){

        $this->load->model('Autopartes_model');
        $this->load->view('principal.html');
    }

    /////////////////Tipos/////////////////
    public function dame_tipo_autoparte(){
        echo("Método no implementado");
    }

    /////////////////Categorias/////////////////

    //Suspencion
    public function dame_aut_int(){

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

}


?>