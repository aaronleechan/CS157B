<?php
/**
 * Created by PhpStorm.
 * User: emmyli
 * Date: 2018/2/28
 * Time: 上午9:34
 */

class Note
{
    private $NoteID;
    private $NotebookID;
    private $Definition;
    private $Term;
    public function getNoteID(){return $this->NoteID;}
    public function getNoteBookID(){return $this->NotebookID;}
    public function getDefinition(){return $this->Definition;}
    public function getTerm(){return $this->Term;}

}
