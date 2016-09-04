<?php
return new \Phalcon\Config([
    'database' => [
        'adapter'   => 'Mysql',
        'host'      => 'localhost',
        'username'  => 'root',
        'password'  => ($_SERVER['SERVER_ADDR']=='::1'?'':'z3nta'),
        //'password'  => '',
        'dbname'    => 'expoapp'
    ],
    'application' => [
        'controllersDir'    => APP_DIR . '/controllers/',
        'modelsDir'         => APP_DIR . '/models/',
        'formsDir'          => APP_DIR . '/forms/',
        'viewsDir'          => APP_DIR . '/views/',
        'libraryDir'        => APP_DIR . '/library/',
        'pluginsDir'        => APP_DIR . '/plugins/',
        'cacheDir'          => APP_DIR . '/cache/',
        'baseUri'           => '/expoapp/',
        'publicUrl'         => '/expoapp/',
        'cryptSalt'         => 'eEAfR|_&G&f,+vU]:jFr!!A&+71w1Ms9~8_4L!<@[N@DyaIP_2My|:+.u>/6m,$D'
    ],
    'noAuth'        => [
        "cliente" => ["*" => true]
    ],
    'appTitle'      =>'Expo Hospital APP',
    'appName'       =>"Expo Hospital APP",
    'appAutor'      =>'Zenta',
    'appAutorLink'  =>'Zenta',
]);