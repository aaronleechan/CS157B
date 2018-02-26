<?php
  class Class
  {
    private $ClassID;
    private $ClassName;
    private $DepartmentID;
    private $ProfessorID;

    public function getID() { return $this->ClassID; }
    public function getName() { return $this->ClassName; }
    public function getDepartmentID() { return $this->DepartmentID; }
    public function getProfessorID() { return $this->ProfessorID; }
  }
?>
