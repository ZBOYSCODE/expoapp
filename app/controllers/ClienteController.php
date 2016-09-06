<?php
/**
 * Created by PhpStorm.
 * User: jasilva
 * Date: 03/09/2016
 * Time: 14:28
 */

namespace App\Controllers;

use App\Auth\Exception;
use App\Models\Cliente;
use App\Valida\Valida;
use App\Random\RandomOrgClient;


class ClienteController extends ControllerBase
{


    public function indexAction() {

        $this->menuAction();

    }

    public function menuAction() {

        $this->view->pick("cliente/index");

    }

    public function newAction() {

        $this->assets->addJs("js/pages/registro.js");
        $this->view->pick("cliente/create");
    }

    public function listAction() {

        $clientes = Cliente::find();

        $this->assets->addJs("js/pages/listar.js");
        $this->view->setVar("clientes", $clientes);
        $this->view->pick("cliente/list");
    }

    public function sorteoAction() {


        $ganadores = [];
        $http_status = [];
        $response = [];


        $floor_limit = Cliente::getSmallerId();
        $ceil_limit = Cliente::getGreaterId();


        ## usamos la api de random solo si viene un id de min y max seteados
        if(!empty($floor_limit) and !empty($ceil_limit) and ($floor_limit != false) and ($ceil_limit != false)){

            try {

                #random.org
                $random = new RandomOrgClient();

                if($floor_limit == $ceil_limit) {
                    $response[] = $floor_limit;
                }
                else {
                    //echo "2";
                    #si el min != max, traemos 3 numeros random entre el min y max
                    $response = $random->generateIntegers(1, (int)$floor_limit, (int)$ceil_limit);
                }

                #traemos los usuarios dependiendo de la respuesta del random.
                $ganadores = Cliente::findIn($response);

                $error = false;
                $msg = "Sorteo Correcto";



            } catch (Exception $exception) {


                $response = [];
                $error = true;
                $msg = "Error al conectarse a la API de Random.org: (" . $exception . ")";


            }


            $http_status = [
                "has_error" => $error,
                "msg" => $msg
            ];
        }



        $this->view->setVar("ganadores", $ganadores);
        $this->view->setVar("http_status", $http_status);
        $this->view->pick("cliente/sorteo");
    }


    /**
     * Método para persistir los datos de los clientes
     */
    public function saveAction() {


        if($this->request->isAjax()) {
            //array de respuesta al ajax
            $response = [];


            $formdata = $this->request->getPost();



            $valida = new Valida($formdata,[
                'name'=>'required|string',
                'email'=>'required|email',
                'phone'=>'int',
            ]);


            if($valida->failed()) {

                $response["estado"] = "validacion";
                $response["msg"] = "Verifique los datos.";

                foreach ($valida->errors as $message) {
                    $response["datos"][] = $message;
                }

            }
            else {

                // si no falla la validacion persistimos

                $user = new Cliente();
                $status = $user->persist($formdata);


                if($status == true) {
                    //se guardó

                    $response["estado"] = "correcto";
                    $response["msg"] = "datos guardados correctamente.";
                    $response["datos"] = [];

                }
                else {
                    // error en la persistencia

                    $response["estado"] = "inesperado";
                    $response["msg"] = "Error inesperado al guardar los datos.";
                    $response["datos"] = [];

                }
            }

            echo json_encode($response, JSON_PRETTY_PRINT);

        }
        else {
            $this->defaultRedirect();
        }
    }

}