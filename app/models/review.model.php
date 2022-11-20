<?php

class reviewModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=web2;charset=utf8', 'root', '');
    }

    /**
     * Devuelve la lista de tareas completa.
     */
    public function getAll() {
        // 1. abro conexión a la DB
        // ya esta abierta por el constructor de la clase

        // 2. ejecuto la sentencia (2 subpasos)
        $query = $this->db->prepare("SELECT * FROM campeones");
        $query->execute();

        // 3. obtengo los resultados
        $campeones = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        
        return $campeones;
    }

    public function getCampeonbyid($id) {
        $query = $this->db->prepare("SELECT * FROM campeones WHERE id = ?");
        $query->execute([$id]);
        $campeones = $query->fetch(PDO::FETCH_OBJ);
        
        return $campeones;
    }

    /**
     * Inserta una tarea en la base de datos.
     */
    public function insertCampeon($id_faccion_fk, $campeon, $rareza, $afinidad) {
        $query = $this->db->prepare("INSERT INTO campeones (id_faccion_fk, campeon, rareza, afinidad) VALUES (?, ?, ?, ?)");
        $query->execute([$id_faccion_fk , $campeon, $rareza, $afinidad]);

        return $this->db->lastInsertId();
    }


    /**
     * Elimina una tarea dado su id.
     */
    function deleteCameponById($id) {
        $query = $this->db->prepare('DELETE FROM campeones WHERE id = ?');
        $query->execute([$id]);
    }

    function orderASC () {
        $query = $this->db->prepare("SELECT * FROM campeones ORDER BY id ASC");
        $query->execute();
        $campeones = $query->fetchAll(PDO::FETCH_OBJ);
        return $campeones;
    }

    function orderDESC () {
        $query = $this->db->prepare("SELECT * FROM campeones ORDER BY id DESC");
        $query->execute();
        $campeones = $query->fetchAll(PDO::FETCH_OBJ);
        return $campeones;
    }

    function sortbyorder ($sortby = null , $order = null ){
        $query = $this->db->prepare("SELECT * FROM campeones ORDER BY $sortby $order");
        $query->execute();
        $campeones = $query->fetchAll(PDO::FETCH_OBJ);
        return $campeones;
    }

    function update($id_faccion_fk, $campeon, $rareza, $afinidad, $id){
        $query = $this->db->prepare('UPDATE campeones SET id_faccion_fk=?, campeon=?, rareza=?, afinidad=? WHERE id=?');
        $query->execute([$id_faccion_fk, $campeon, $rareza, $afinidad, $id]);
    }
}
