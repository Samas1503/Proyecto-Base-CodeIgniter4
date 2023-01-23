<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="<?php echo base_url();?>/inicio">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url();?>/formulario">Formulario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url();?>/contacto">Contacto</a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Tablas
                        </button>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <?php
                            echo "<li><a class='dropdown-item' href='".base_url()."/tablas/juegos'>Juegos</a></li>";
                            echo "<li><a class='dropdown-item' href='".base_url()."/tablas/usuarios'>Usuarios</a></li>";
                            echo "<li><a class='dropdown-item' href='".base_url()."/tablas/comentarios'>Comentarios</a></li>";
                            echo "<li><hr class='dropdown-divider'></li>";
                            echo "<li><a class='dropdown-item' href='" . base_url() . "/tablas/partidas'>Partidas</a></li>";
                            ?>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url();?>/registro">Registrarse</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url();?>/iniciar-sesion">Iniciar Sesion</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>