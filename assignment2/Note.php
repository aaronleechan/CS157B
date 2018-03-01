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
    private $NoteBookID;
    private $Definition;
    private $term;
    public function getNoteID(){return $this->NoteID;}
    public function getNoteBookID(){return $this->NoteBookID;}
    public function getDefinition(){return $this->Definition;}
    public function getTerm(){return $this->term;}

}