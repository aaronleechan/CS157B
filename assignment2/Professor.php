<?php
  class Professor
  {
    private $ProfessorID;
    private $LastName;
    private $FirstName;

    public function getID() { return $this->ProfessorID; }
    public function getLastName() { return $this->LastName; }
    public function getFirstName() { return $this->FirstName; }
  }
?>
