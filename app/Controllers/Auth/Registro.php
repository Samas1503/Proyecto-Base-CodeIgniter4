<?php namespace App\Controllers\Auth;

use App\Controllers\BaseController;
use App\Entities\User;

class Registro extends BaseController
{
    public function index()
    {
        $user = new User;
        d($user);
        $data = [
            'titulo' => 'Registro'
        ];
        return view('Pages/Auth/registro', $data);
    }

    public function store(){

    }
}
?>