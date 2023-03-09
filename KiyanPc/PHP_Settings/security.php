<?php
class Authentication{
    static function login( $userid ){        
        $_SESSION['userid'] = $userid;
    }
    static function check(){
        return isset( $_SESSION['userid'] );
    }
    static function userid(){
        return $_SESSION['userid'];
    }
    static function logout(){
        unset( $_SESSION['userid'] );
    }
}


class Authorization
{
	static function role($roll)
	{
		$_SESSION['Rolls'] = $roll;
	}
	
	static function check()
	{
		return isset($_SESSION['Rolls']);
	}
	
	static function Rolls()
	{
		return $_SESSION['Rolls'];
	}
}




?>