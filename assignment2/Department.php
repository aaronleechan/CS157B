<?php
  class Department
  {
      private $DepartmentID;
      private $DepartmentCode;
      private $DepartmentName;
      private $SchoolID;

      public function getID() { return $this->DepartmentID; }
      public function getCode() { return $this->DepartmentCode; }
      public function getName() { return $this->DepartmentName; }
      public function getSchoolID() { return $this->SchoolID; }
  }
?>
