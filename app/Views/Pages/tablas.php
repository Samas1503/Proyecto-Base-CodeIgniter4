<?=$this->extend('Layouts/principal')?>

<?=$this->section('titulo')?>
    <?= $titulo?>
<?= $this->endSection()?>

<?=$this->section('contenido')?>
    <?php $cabecera = substr($titulo, -strlen($titulo), strlen($titulo) - 1);?>
    <div class="d-grid gap-2">
        <button class="btn btn-success" type="button"  data-bs-toggle="modal" data-bs-target="#crear<?=$titulo?>">Agregar <?=$cabecera?></button><!-- Modal -->
        <div class="modal fade" id="crear<?=$titulo?>" tabindex="-1" aria-labelledby="crear<?=$titulo?>Label" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="crear<?=$titulo?>Label">Agregar <?=$cabecera?></h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <!-- <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">Email address</label>
                            </div> -->
                            <div class="fomr-control">
                                <select class="form-select" aria-label="usuarioSelect">
                                    <option selected>Selecciona un Usuario</option>
                                    <?php foreach($metodos->obtenerUsuarios() as $usuario):?>
                                        <option value="<?=$usuario->id_usuario?>"><?=$usuario->nombre?></option></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                            <div class="fomr-control">
                                <select class="form-select" aria-label="JuegoSelect">
                                    <option selected>Selecciona un Juego</option>
                                    <?php foreach($metodos->obtenerJuegos() as $juego):?>
                                        <option value="<?=$juego->id_juego?>"><?=$juego->nombre?></option></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control" id="<?=$titulo?>Estado" placeholder="Estado">
                                <label for="<?=$titulo?>Estado">Password</label>
                            </div>
                            <div class="form-control">
                                <label for="rangoEstado" class="form-label">Porcentaje de Juego completado</label>
                                <div class="d-flex justify-content-between">
                                    <?php for ($i = 0; $i <= 100; $i = $i + 25) {
                                        echo "<p class='pb-0 mb-0'>$i%</p>";
                                    }?>
                                </div>
                                <input type="range" class="form-range pt-0 mt-0" min="0" max="100" step="0.01" id="rangoEstado">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-primary">Agregar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <?php
    $datos = [];
    switch($tipo) {
        case "usuarios":
            $datos = $metodos->obtenerDatosUsuarios();
            echo "<div class='table-responsive'><table class='table table-dark table-striped'>
                <thead>
                    <tr>
                        <th scope='col'>ID_Usuario</th>
                        <th scope='col'>Nombre</th>
                        <th scope='col'>Apellido</th>
                        <th scope='col'>Email</th>
                        <th scope='col'>Tpo de Usuario</th>
                    </tr>
                </thead>
                <tbody>";
                foreach ($datos as $dato) {
                    echo "<tr><th scope='row'>" . $dato->id_usuario . "</th>";
                    echo "<td>" . $dato->nombre . "</td>";
                    echo "<td>" . $dato->apellido . "</td>";
                    echo "<td>" . $dato->email . "</td>";
                    echo "<td>" . $dato->tipo_usuario . "</td></tr>";
                }
                echo "</tbody></table></div>";
            break;
        
        case "partidas":
            $datos = $metodos->obtenerDatosPartidas();
            echo "<div class='table-responsive'><table class='table table-dark table-striped'>
                <thead>
                    <tr>
                        <th scope='col'>Usuario</th>
                        <th scope='col'>Juego</th>
                        <th scope='col'>Esado</th>
                    </tr>
                </thead>
                <tbody>";
                foreach ($datos as $dato) {
                    echo "<tr><th scope='row'>" . $dato-> usuario . "</th>";
                    echo "<td>" . $dato-> juego . "</td>";
                    $progreso = $dato->estado * 100;
                    echo "<td><div class='progress'>
                        <div class='progress-bar bg-" . ($progreso < 30 ? "danger" : ($progreso < 75 ? "warning" : ($progreso < 100 ? "success" : "primary"))) . "' role='progressbar' aria-label='Segment one' style='width: $progreso%' aria-valuenow='$progreso' aria-valuemin='0' aria-valuemax='100'>" . ($progreso == 100 ? "Completado!" : "$progreso%") . "</div>
                        <div class='progress-bar bg-secondary' role='progressbar' aria-label='Segment two' style='width: " . (100 - $progreso) . "%' aria-valuenow='" . (100 - $progreso) . "' aria-valuemin='0' aria-valuemax='100'></div>
                    </div>"; 
                    echo"</td></tr>";
                }
                echo "</tbody></table></div>";
            break;
            
        case "juegos":
            $datos = $metodos->obtenerDatosJuegos();
            echo "<div class='table-responsive'><table class='table table-dark table-striped'>
                <thead>
                    <tr>
                        <th scope='col'>ID_Juego</th>
                        <th scope='col'>Nombre</th>
                        <th scope='col'>Descripcion</th>
                        <th scope='col'>Nivel</th>
                        <th scope='col'>Clase</th>
                        <th scope='col' class='row mx-0'>
                            <span class='col-4 mx-0'>Puntos</span>
                            <span class='col-5 mx-0'>Valoracion</span>
                            <span class='col-3 mx-0'>Votos</span>
                        </th>
                    </tr>
                </thead>
                <tbody>";
                foreach ($datos as $dato) {
                    echo "<tr><th scope='row'>" . $dato->id_juego . "</th>";
                    echo "<td>" . $dato->nombre . "</td>";
                    echo "<td>" . $dato->descripcion . "</td>";
                    echo "<td>" . $dato->nivel . "</td>";
                    echo "<td>" . $dato->clase . "</td>";
                    
                    echo "<td><div class='row mx-0'>";
                    echo "<span class='text-warning col-3'>".($dato->puntos>0?bcdiv($dato->puntos,'1',2):0)."/10</span>";
                    $estrellas = ($dato->puntos / 2 % 20);
                    $adicional = ($dato->puntos / 20);


                    echo "<div class='d-flex col-6'>";
                    if($estrellas>0){
                        for($i=0;$i<$estrellas;++$i){
                            echo "<div class='progress' style='width:30px; height: 30px; clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);'>
                                    <div class='progress-bar bg-warning' role='progressbar' aria-label='punto$i' style='width: 100%' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>
                                </div>";
                        }
                    }
                    if($adicional > 0){
                        echo "<div class='progress' style='width:30px; height: 30px; clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);'>
                                <div class='progress-bar bg-warning' role='progressbar' aria-label='adicional' style='width: ".($adicional*100)."%' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>
                                <div class='progress-bar bg-secondary' role='progressbar' aria-label='Segment two' style='width: ".(100-($adicional*100))."%' aria-valuenow='".(100-($adicional*100))."' aria-valuemin='0' aria-valuemax='100'></div>
                            </div>";
                    }
                    if ($adicional > 0)
                        ++$estrellas;
                    if(10-$estrellas > 0)
                        for($i=0;$i<(5-$estrellas);++$i){
                        echo "<div class='progress' style='width:30px; height: 30px; clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);'>
                                <div class='progress-bar bg-secondary' role='progressbar' aria-label='sinpunto$i' style='width: 100%' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>
                            </div>";
                        }
                    echo "</div>";

                    echo "<span class='col-3'>($dato->cant_votos)</span>";
                    
                    echo "</div></td></tr>";
                }
                echo "</tbody></table></div>";
            break;
        case "comentarios":
            $datos = $metodos->obtenerDatosComentarios();
            echo "<div class='table-responsive'><table class='table table-dark table-striped'>
                <thead>
                    <tr>
                        <th scope='col'>ID_Comentario</th>
                        <th scope='col'>Usuario</th>
                        <th scope='col'>Juego</th>
                        <th scope='col'>Fecha</th>
                        <th scope='col'>Comentario</th>
                    </tr>
                </thead>
                <tbody>";
                foreach ($datos as $dato) {
                    echo "<tr><th scope='row'>" . $dato->id_comentario . "</th>";
                    echo "<td>" . $dato->usuario . "</td>";
                    echo "<td>" . $dato->juego . "</td>";
                    echo "<td>" . $dato->fecha . "</td>";
                    echo "<td>" . $dato->comentario . "</td></tr>";
                }
                echo "</tbody></table></div>";
            break;
    }

    ?>
    
<?= $this->endSection()?>