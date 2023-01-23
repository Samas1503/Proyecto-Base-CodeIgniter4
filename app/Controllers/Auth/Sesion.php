<?php namespace App\Controllers\Auth;

use App\Controllers\BaseController;

class Sesion extends BaseController
{
    public function index()
    {
        $data = [
            'titulo' => 'Iniciar Sesion'
        ];
        return view('Pages/Auth/iniciar_sesion', $data);
    }

    public function store(){
        
    }
}
?>