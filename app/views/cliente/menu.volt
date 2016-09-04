{% extends "layout.volt" %}


{% block content %}

    <div class="logo-box">
        {{ image("img/logo-z-med.png", "height":"120", "class" : "img-responsive") }}
    </div>


    <ul class="nav nav-pills nav-pills-primary mynav">
        <li  class="active1">
            <a href="{{ url("cliente/new") }}">
                <i class="fa fa-user-plus"></i>
                Nuevo Registro
            </a>
        </li>
        <li class="active2">
            <a href="{{ url("cliente/list") }}" >
                <i class="fa fa-list"></i>
                Listar Registros
            </a>
        </li>
        <li  class="active3">
            <a href="{{ url("cliente/sorteo") }}">
                <i class="fa fa-gift"></i>
                Sortear
            </a>
        </li>
    </ul>



{% endblock %}