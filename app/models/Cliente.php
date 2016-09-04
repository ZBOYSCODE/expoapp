<?php

namespace App\Models;


class Cliente extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $name;

    /**
     *
     * @var string
     */
    public $institution;

    /**
     *
     * @var string
     */
    public $profession;

    /**
     *
     * @var string
     */
    public $phone;

    /**
     *
     * @var string
     */
    public $email;

    /**
     *
     * @var integer
     */
    public $assessment;

    /**
     *
     * @var string
     */
    public $comment;

    /**
     *
     * @var string
     */
    public $created_at;


    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'cliente';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Cliente[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Cliente
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    public static function findIn($parameters = null)
    {

        #tokens = (?0, ?1, ?2)' dependiendo del largo de los parametros a pasar por referencia
        $tokens = "";

        if($parameters == null)
            return false;
        else {

            for ($i = 0; $i<count($parameters); $i++) {
                if($i == count($parameters)-1){

                    $tokens .= "?".$i;
                }
                else {
                    $tokens .= "?".$i.",";
                }
            }

            return parent::find(
                [
                    'id IN ('.  $tokens .')',
                    'bind' => $parameters
                ]
            );
        }

    }



    /**
     * Permite persistir un cliente en la base de datos
     * @param mixed $parameters
     * @return boolean
     */
    public function persist($parameters = null)
    {

        if($parameters == null)
            return false;

        try {

            $this->name = $parameters["name"];
            $this->institution = $parameters["institution"];
            $this->profession = $parameters["profession"];
            $this->phone = $parameters["phone"];
            $this->email = $parameters["email"];
            $this->assessment = $parameters["assessment"];
            $this->comment = $parameters["comment"];
            $this->created_at = date('Y/m/d H:i:s');


            //hoy
            $this->actualizado = date('Y/m/d H:i:s');

        } catch (Exception $e) {
            return false;
        }


        if($this->save()){
            //guardado con exito
            return true;
        }
        else {
            return false;
        }
    }


    public static function getSmallerId() {
        $cliente = parent::findFirst([
            "order" => "id ASC"
           ]);

        if($cliente)
            return $cliente->id;
        else
            return false;

    }

    public static function getGreaterId() {
        $cliente = parent::findFirst([
            "order" => "id DESC"
        ]);

        if($cliente)
            return $cliente->id;
        else
            return false;
    }

}
