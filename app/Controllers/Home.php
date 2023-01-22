<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data = [
            'titulo' => 'inicio'
        ];
        return view('Pages/inicio',$data);
    }

    public function formulario()
    {
        $data = [
            'titulo' => 'inicio'
        ];
        return view('Pages/Formulario',$data);
    }

    public function inicio_sesion()
    {
        $data = [
            'titulo' => 'Iniciar Sesion'
        ];
        return view('Pages/iniciar_sesion',$data);
    }
    
    public function contacto()
    {
        $data = [
            'titulo' => 'Contacto'
        ];
        return view('Pages/contacto',$data);
    }
}
