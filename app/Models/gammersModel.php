<?php namespace App\Models;

use CodeIgniter\Model;

class gammersModel extends Model{
    //* Obtener Datos Parciales
    public function obtenerUsuarios(){
        $datos = $this->db->query('SELECT * FROM usuarios');
        return $datos->getResult();
    }
    public function obtenerJuegos(){
        $datos = $this->db->query('SELECT * FROM juegos');
        return $datos->getResult();
    }
    public function obtenerClases($filtro = 0){
        $datos = $this->db->query("SELECT * FROM clases WHERE nivel LIKE %".($filtro));

        return $datos->getResult();
    }
    public function obtenerNiveles(){
        $datos = $this->db->query('SELECT * FROM niveles');
        return $datos->getResult();
    }
    public function obtenerTiposUsuarios(){
        $datos = $this->db->query('SELECT * FROM tipos_usuarios');
        return $datos->getResult();
    }

    //* Obtener Datos Completos
    public function obtenerDatosJuegos(){
        $datos = $this->db->query('SELECT * FROM juegosview');
        return $datos->getResult();
    }
    
    public function obtenerDatosUsuarios(){
        $datos = $this->db->query('SELECT * FROM usuariosview');
        return $datos->getResult();
    }
    
    public function obtenerDatosComentarios(){
        $datos = $this->db->query('SELECT * FROM comentariosview;');
        return $datos->getResult();
    }
    
    public function obtenerDatosPartidas(){
        $datos = $this->db->query('SELECT * FROM partidasview');
        return $datos->getResult();
    }
    
}