{% extends "layout.volt" %}


{% block content %}

    <div class="card-signup card" >
            <div class="header header-success text-center">
                <div class="social-line">
                    {{ image("img/z-med.png", "height":"60") }}
                </div>
                <h5>Lista de Registros</h5>

            </div>

        <div class="text-center">
            <a class="btn btn-md btn-default" href=" {{ url("") }}">
                <i class="fa fa-bars"></i> Menú
            </a>
        </div>

            <div class="content">
                <div class="table-responsive">
                    <table class="table" id="fresh-table">
                        <thead>
                        <tr>
                            <th>Nombre</th>
                            <th class="hidden-xs">Correo</th>
                            <th>Telefono</th>
                            <th class="hidden-xs">Institución</th>
                            <th class="hidden-xs">Profesión</th>
                        </tr>
                        </thead>
                        <tbdody>
                            {%  for item in clientes %}
                                <tr>
                                    <td>{{ item.name }}</td>
                                    <td class="hidden-xs">{{ item.email }}</td>
                                    <td>{{ item.phone }}</td>
                                    <td class="hidden-xs">{{ item.institution }}</td>
                                    <td class="hidden-xs">{{ item.profession }}</td>
                                </tr>

                            {% endfor %}
                        </tbdody>
                    </table>

                </div>
            </div>
    </div>




{% endblock %}
