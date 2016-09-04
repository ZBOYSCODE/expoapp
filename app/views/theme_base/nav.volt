<header>
    <nav class="navbar navbar-fixed-top my-navbar navbar-styled-secondary " role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">


                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="glyphicon glyphicon-menu-hamburger icon-lg" aria-hidden="false"></span>
                </button>
                <!-- logo -->


                <a class="navbar-brand" href="{{ url("") }}">


                    {{ image("img/z-med.png", "height":"30", "style":"margin-top:10px;") }}


                </a>

            </div>
            <div class="collapse navbar-collapse animated fadeIn" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav animated fadeIn text15">

                    <li> {{ link_to("agendamiento", "Agenda") }}</li>
                    <li> {{ link_to("paciente/hc/1", "Pacientes") }}</li>
                    <li> {{ link_to("informe", "Informes" ) }}</li>
                    <li> {{ link_to("javascript://", "Configuración" ,false) }}</li>
                    <li> {{ link_to("javascript://", "Ayuda" ,false) }}</li>

                </ul>


                <ul class="nav navbar-nav navbar-form hidden-sm hidden-xs">
                    <div class="form-group">


                         {{ text_field("generalSearch","class":"form-control","placeholder":"Busca turnos por Pacientes, Doctores, Fecha y Hora")  }}


                    </div>
                </ul>


                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="gi gi-user"></i><b> usuario </b> <span class="caret"></span></a>
                        <ul id="login-dp" class="dropdown-menu">


                            <li>{{ link_to("javascript://", "Perfil" ,false) }}</li>
                            <li>{{ link_to("javascript://", "Salir" ,false) }}</li>


                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>