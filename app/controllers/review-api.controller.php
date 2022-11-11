<?php
require_once './app/models/review.model.php';
require_once './app/views/api.view.php';

class ReviewApiController {
    private $model;
    private $view;
    private $data;

    public function __construct() {
        $this->model = new reviewModel();
        $this->view = new ApiView();
        
        // lee el body del request
        $this->data = file_get_contents("php://input");
    }

    private function getData() {
        return json_decode($this->data);
    }

    public function showAll($params = NULL){
      $campeones=$this->model->getAll();
        if (isset($_GET['sortby']) && isset($_GET['order'])){
            if($_GET['order'] == 'ASC'){
                if($_GET['sortby'] == 'afinidad')
                $campeones = $this->model->orderASC();//?sortby=afinidad&order=ASC
                }
            elseif ($_GET['order'] == 'DESC'){
                if($_GET['sortby'] == 'afinidad')
                $campeones = $this->model->orderDESC();//?sortby=afinidad&order=DESC
            }
        }
        else{
        $campeones = $this->model->getAll();
        }
        return $this->view->response($campeones, 200);
        
      } 

      public function showCampeones($params = NULL) {
        $id = $params[':ID'];
        $campeones  = $this->model->getCampeonbyid($id);
        if($campeones)
        $this->view->response($campeones);
        else 
        $this->view->response("El campeon buscado con el id=$id no existe", 404);
      }

      public function addCampeones($params = NULL){ //añadir un nuevo campeon
        
        $campeonesbyid = $this->getData();  
        
        if( empty($campeonesbyid->id_faccion_fk) || empty($campeonesbyid->campeon)|| empty($campeonesbyid->rareza)|| empty($campeonesbyid->afinidad)){
            $this->view->response("Complete los datos", 400);
        }
        else {
            $id = $this->model->insertCampeon($campeonesbyid->id_faccion_fk, $campeonesbyid->campeon, $campeonesbyid->rareza, $campeonesbyid->afinidad);
            $campeonesbyid = $this->model->getCampeonbyid($id);
            $this->view->response($campeonesbyid, 201);
        }
      }

      public function delete($params = NULL) {
        $id = $params[':ID'];
      
        $campeones  = $this->model->getCampeonbyid($id);
      if($campeones){
        $this->model->deleteCameponById($id);
        $this->view->response($campeones);
      }
      else
      $this->view->response("el campeon con el id=$id no existe", 404);
        }

        public function updateProduct($params = null){
          $id = $params[':ID'];
          $campeon = $this->model->getCampeonbyid($id);
          if ($campeon){
              $campeon = $this->getData();
              $this->model->update($campeon->id_faccion_fk, $campeon->campeon, $campeon->rareza, $campeon->afinidad, $id);
              $this->view->response("el campeon con el id=$id se actualizo correctamente",200);
              }else {
              $this->view->response("El producto no existe",404);
          }
      }
}