<?php

class GetDataGreenSpace
{

    private $idGreenSpace;
    private $nameGreeSpace;
    private $descriptionGreenSpace;
    private $adressGreenSpace;
    private $pictureGreenSpace;
    private $planningGreenSpace;



    public function GetFromDbAllGreenSpace()
    {
        global $Db;

        $sql = 'SELECT * FROM `parc`';
        $resultSet = $Db->query($sql);
        
        return ($resultSet);


    }

    public function searchGreenSpace($recherche)
    {
        global $Db;

        $sql = 'SELECT * FROM `parc` WHERE nom_parc LIKE "%'.$recherche.'%"';
        $resultSet = $Db->query($sql);
        
        return ($resultSet);


    }








}

?>