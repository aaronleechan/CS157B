<?php
/**
 * Created by PhpStorm.
 * User: emmyli
 * Date: 2018/2/27
 * Time: 下午3:47
 */

class Notebook
{
  private $NotebookID;
  private $NotebookName;
  private $UserID;
  private $ClassID;


  public function getNotebookID() { return $this->NotebookID; }

  public function getNotebookName() { return $this->NotebookName; }

  public function getUserID() { return $this->UserID; }

  public function getClassID(){return $this->ClassID;}

}
