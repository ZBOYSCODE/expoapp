{% extends "layout.volt" %}


{% block content %}


    <div class="card-signup card" >
        <div class="header header-primary text-center">
            <div class="social-line">
                {{ image("img/z-med.png", "height":"60") }}
            </div>
            <h5>Registro de Personas</h5>

        </div>

        <div class="text-center">
            <a class="btn btn-md btn-default" href=" {{ url("") }}">
                <i class="fa fa-bars"></i> Inicio
            </a>
        </div>

        <section>
            <div class="box-center">
                <form id="registro-Form" action="{{ url("cliente/save")  }}" method="post" data-type="ajax" data-redirect="{{ url("")  }}">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="name">** Nombre o Razón Social</label>
                                <input type="text" id="name" name="name" class="form-control has-info">
                                <span class="hidden text-danger" id="error-name"></span>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="email">** Email</label>
                                <input type="text" id="email" name="email" class="form-control has-info">
                                <span class="hidden text-danger" id="error-email"></span>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="phone">Teléfono</label>
                                <input type="text" id="phone" name="phone" class="form-control has-info">
                                <span class="hidden text-danger" id="error-phone"></span>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="institution">Institución</label>
                                <input type="text" id="institution" name="institution" class="form-control has-info">
                                <span class="hidden text-danger" id="error-institution"></span>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="profession">Profesión</label>
                                <input type="text" id="profession" name="profession" class="form-control has-info">
                                <span class="hidden text-danger" id="error-profession"></span>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="comment">Comentario</label>
                                <textarea id="comment" name="comment" class="form-control has-info"> </textarea>
                                <span class="hidden text-danger" id="error-comment"></span>
                            </div>
                        </div>

                        <input type="hidden" id="default" name="assessment" checked="true" value="1">
                        <!--
                        <div class="col-xs-12 hidden">
                            <div class="form-group">
                                <label for="rut">Evaluación </label>
                                <label><i><small>(Apreciación del Expositor)</small></i> </label>

                                <div class="radio">
                                    <label>
                                        <input type="radio" id="assessment1" name="assessment" checked="true" value="1">
                                        1 - No Interesado
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" id="assessment2" name="assessment" value="2">
                                        2 - Poco Interesado
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" id="assessment3" name="assessment" value="3">
                                        3 - Neutro
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" id="assessment4" name="assessment" value="4">
                                        4 - Intesado
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" id="assessment5" name="assessment" value="5">
                                        5 - Muy Intersado
                                    </label>
                                </div>

                                <span class="hidden text-danger" id="error-assessment"></span>
                            </div>
                        </div> -->
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group app-align-center">
                                <button id="btn-Registro" type="button" value="Enviar" class="btn btn-block btn-primary">Guardar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>

{% endblock %}