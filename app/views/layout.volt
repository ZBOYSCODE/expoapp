<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="theme-color" content="#9c27b0" />
        <meta name="HandheldFriendly" content="true">
        <meta name="apple-touch-fullscreen" content="yes">

        <title>{{ config.appTitle }}</title>

        <meta name="viewport"       content="width=device-width, initial-scale=1.0">
        <meta name="description"    content={{ '"' ~ config.appName  ~ '"' }} >
        <meta name="author"         content={{ '"' ~ config.appAutor  ~'"' }}>

        <link rel="shortcut icon" href="{{ url("img/favicon.ico") }}">

        {# CSS GENERICAS #}
        {{ stylesheet_link('css/bootstrap.min.css') }}
        {# stylesheet_link('css/bootstrap-theme.min.css') #}
        {{ stylesheet_link('css/material-kit.css') }}
        {{ stylesheet_link('css/jquery-ui.min.css') }}
        {{ stylesheet_link('css/font-awesome.min.css') }}

        {# CSS CUSTOM #}
        {{ stylesheet_link('css/custom.css') }}

        {{ assets.outputCss() }}

    </head>
    <body>

        <div class="wrapper">
            <div class="main  main-raised">
                <div class="container">

                    {% block content %}{% endblock %}

                </div>
            </div>
        </div>


        {# JS GENERICAS #}
        {# javascript_include('js/jquery-2.2.0.min.js') #}
        {{ javascript_include('js/jquery.min.js') }}
        {{ javascript_include('js/plugins/jquery-ui.min.js') }}
        {{ javascript_include('js/bootstrap.min.js') }}
        {{ javascript_include('js/material.min.js') }}
        {{ javascript_include('js//material-kit.js') }}
        {{ javascript_include('js/plugins/jquery.others-plugins.js') }}
        {{ javascript_include('js/bootstrap-table.js') }}


        {# CSS CUSTOM #}
        {{ javascript_include('js/mifaces.js') }}
        {{ javascript_include('js/jquery.utilidades.js') }}
        {{ javascript_include('js/app.js') }}

        {{ assets.outputJs() }}

    </body>
</html>