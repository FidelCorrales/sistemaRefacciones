<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Usuarios extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('usuarios_m');
    }

    public function index(){
        $this->load->view('usuarios_v');
    }

    /////////////////Login/////////////////
    public function login(){
        //$form_data = $this->input->post();
        $correo = $this->input->post("login");
        $contraseña = md5($this->input->post("password"));
        $login = $this->usuarios_m->login($correo, $contraseña);
        if ($login>0){
            $this->load->view('principal',$login);
            //print_r($login);    
        }else{
            //echo "No se encontro el Usuario";
            $msjError = "No se encontro una cuenta con ese correo, intenté de nuevo.";
            return $msjError;
        }  
    }

    //--CRUD--//
    //Crear
    public function insertar_úsuario(){
        
        $nombre = $_POST['nombre'];
        $apaterno = $_POST['apaterno'];
        $amaterno = $_POST['amaterno'];
        $genero = $_POST['genero'];
        $telefono = $_POST['telefono'];
        $correo = $_POST['correo'];
        $password = $_POST['password'];

        $confirmacion = $this->usuarios_m->nuevoUsuario($nombre,$apaterno,$amaterno,$genero,$telefono,$correo,$password);
        if(!is_null($confirmacion)){
            return $confirmacion;
        }
        else{
            $msjError = "No se logro guardar en la base de datos, intenté de nuevo.";
            return $msjError;
        }
    }

    //leer
    public function leer_usuarios(){
        $usuarios = $this->usuarios_m->leerUsuarios();
        if(!empty($usuarios)){
            $data['usuarios'] = $usuarios;
            $this->load->view('usuarios_v',$data);
        }else{
            $msjResult = "No se logro leer en la base de datos, intenté de nuevo.";
            return $msjResult;
        }
    }

    //leer por id
    public function leer_usuario($id){
        if(!is_null($id)){
            $usuario = $this->usuarios_m->leerUsuarios($id);
            if(!empty($usuario)){
                $data['usuarioid'] = $usuario;
                $this->load->view('usuarios_v',$data);
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
    public function leer_usuario_nombre($nombre){
        if(!is_null($nombre)){
            $usuario = $this->usuarios_m->leerUsuarioNombre();
            if(!empty($usuario)){
                $data['usuarionombre'] = $usuario;
                $this->load->view('usuarios_v',$data);
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
    public function actualizar_usuario($id){
        $actualizacion = $this->usuarios_m->actualizarUsuario($id);
        if(!empty($actualizacion)){
            $msjResult = "Se logro actualizar el usuario.";
            return $msjResult;
        }else{
            $msjResult = "Se logro actualizar, intenté de nuevo.";
            return $msjResult;
        }
    }

    //Eliminar 
    public function eliminar_usuario($id){
        $confirmacion = $this->usuarios_m->eliminarUsuario($id);
        if(!is_null($confirmacion)){
            return $confirmacion;
        }
        else{
            $msjError = "No se logro eliminar en la base de datos, intenté de nuevo.";
            return $msjError;
        } 
    }
    //---FIN CRUD---//


}

?>