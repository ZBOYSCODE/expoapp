{% extends "layout.volt" %}


{% block content %}

    <div class="logo-box">
        {{ image("img/logo-z-med.png", "height":"120", "class" : "img-responsive") }}
    </div>

    <br>
    <br>
    <br>


    <div style="text-align:center; color:gray;">
        <p><i>
            Ingresa tus datos para recibir información adicional
        </i></p>
    </div>

    <ul class="nav nav-pills nav-pills-primary mynav">
        <li  class="active1">
            <a href="{{ url("cliente/new") }}">
                <i class="fa fa-user-plus"></i>
                Nuevo Registro
            </a>
        </li>
    </ul>



{% endblock %}