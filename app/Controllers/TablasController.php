<?php

namespace App\Controllers;


use App\Models\gammersModel;

class TablasController extends BaseController
{
    public function index($tipo)
    {
        $gammer = new gammersModel();
        $uri = service('uri');
        $data = [
            'titulo' => ucfirst($uri->getSegment(2)),
            'tipo' => $uri->getSegment(2),
            'metodos' => $gammer
        ];
        return view('Pages/tablas',$data);
    }
}