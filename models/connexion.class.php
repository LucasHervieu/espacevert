<?php

class Connexion
{

    private $login;
    private $password;

    
    public function recupPost()
        {​​​
    $this->login = filter_input(INPUT_POST, 'pseudo', 
            FILTER_SANITIZE_FULL_SPECIAL_CHARS,FILTER_SANITIZE_MAGIC_QUOTES);
    $this->password = filter_input(INPUT_POST, 'password', 
            FILTER_SANITIZE_FULL_SPECIAL_CHARS,FILTER_SANITIZE_MAGIC_QUOTES);
    //$this->testLogin();
        }​​​
    
    /**
         * testLogin
         *
         * @returnboolean true|false 
         */
    publicfunctiontestLogin()
        {​​​
    global$Db;
    
    $sql = "SELECT*FROM membre WHERE pseudo = '$this->login'";
    $resultSet = $Db->query($sql);
    $user = $resultSet->fetch(PDO::FETCH_OBJ);
    //echo $resultSet->rowCount();
    if ($resultSet->rowCount() == 1) {​​​
    $resultPass = $this->_testPassword($user);
    if ($resultPass == false) {​​​
    returntrue;
                }​​​
    else
                {​​​
    returnfalse;
                }​​​
            }​​​
    else
            {​​​
    returntrue;
            }​​​
        }​​​
    ​[16:13] Axel MINART
        privatefunction_testPassword($user)
        {​​​
    if (password_verify($this->password, $user->membrePass)) 
            {​​​
    $this->_activeSession($user);
    returntrue;
            }​​​ else {​​​
    returnfalse;
            }​​​
        }​​​
    
    /**
         * _activeSession
         *
         * @parammixed $user
         * @returnvoid
         */
    privatefunction_activeSession($user)
        {​​​
    $_SESSION['userId'] = $user->idMembre;
    $_SESSION['userPseudo'] = $user->pseudo;
    $_SESSION['isUser'] = true;
        }​​​
    
    /**
         * destroySession
         *
         * @returnvoid
         */
    publicstaticfunctiondestroySession()
        {​​​
    // Réinitialisation du tableau de session
    // On le vide intégralement
    $_SESSION = array();
    // Destruction de la session
    session_destroy();
    // Destruction du tableau de session
    unset($_SESSION);
        }​​​
    








}

?>