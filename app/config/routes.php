<?php
	/*
	 * Define custom routes. File gets included in the router service definition.
	 */
	$router = new Phalcon\Mvc\Router();

	$router->add('/', array(
	    'controller'    =>  'cliente',
	    'action'        =>  'index'
	));

	return $router;