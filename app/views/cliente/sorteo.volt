{% extends "layout.volt" %}


{% block content %}


    <div class="card-signup card" >
        <div class="header header-warning text-center">
            <div class="social-line">
                {{ image("img/z-med.png", "height":"60") }}
            </div>
            <h5>Sorteo ZMED Random.org </h5>
            <p> Mostrando {{ ganadores|length }} personas sorteadas. </p>

        </div>

        <div class="text-center">
            <a class="btn btn-md btn-default" href=" {{ url("") }}">
                <i class="fa fa-bars"></i> Menú
            </a>
        </div>

        


        <div class="sorte-ganadores">
            <div class="ganadores">
                {%  for item in ganadores %}
                    <div class="item">

                        <span class="nombre">
                            {{ item.name }}
                        </span>



                        <span class="otro">
                            <i class="fa fa-envelope"></i> {{ item.email }}
                        </span>



                        <span class="otro">
                            <i class="fa fa-mobile"></i> {{ item.phone }}
                        </span>

                    </div>
                {% endfor %}
            </div>
        </div>



        <div class="text-center">



            {% if ganadores is empty  %}

                <p class="text-success">

                    No hay registros en la base de datos para sortear.

                </p>

            {% else %}

                <p class="text-success">
                    Números generados por random: <br>

                    {%  for item in ganadores %}
                        {{ item.id }} ,
                    {% endfor %}

                </p>

            {% endif %}


        </div>

    </div>


{% endblock %}