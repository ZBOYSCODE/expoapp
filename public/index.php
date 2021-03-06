<?php
    
    error_reporting(E_ALL);

    use Phalcon\Mvc\Application;
    use Phalcon\Config\Adapter\Ini as ConfigIni;
    
    try {
        
        define('BASE_DIR', dirname(__DIR__));
        define('APP_DIR', BASE_DIR . '/app');
        

        /**
         * Read the configuration
         */
        //$config = new ConfigIni(APP_PATH . 'app/config/config.ini');

        $config = include APP_DIR . '/config/config.php';


        
        if (is_readable(APP_DIR . '/config/config.ini.dev')) {
            $override = new ConfigIni(APP_DIR . '/config/config.ini.dev');
            $config->merge($override);
        }
        
        /**
         * Auto-loader configuration
         */
        require APP_DIR . '/config/loader.php';
        
        /**
         * Load application services
         */
        
        require APP_DIR . '/config/services.php';
        
        $application = new Application($di);
        
        echo $application->handle()->getContent();
    
    } catch (Exception $e){
        
        echo $e->getMessage() . '<br>';
        echo '<pre>' . $e->getTraceAsString() . '</pre>';
    
    }