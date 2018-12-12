<?php
$pass = "testerTesting6";
$hashed = '$2y$10$.tpYs18/r5RRhPo3G6ttRuRvJ39KMTmr4q0VD/e4sQcVh.q4jw4M.';
function encrypt($pass)
{


		echo password_hash($pass, PASSWORD_DEFAULT);

}

encrypt($pass);
/*
function hashVerify ($password, $hashed)
{

        if(password_verify($password,$hashed)){
                echo true;
        }else{
                echo false;
        }
}

hashVerify($pass, $hashed);*/