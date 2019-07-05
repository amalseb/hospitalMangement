<?php
	
	//error_reporting(E_ALL || ~E_NOTICE);
	
	//db config
	$host="localhost";
	$user="root";
	$password="jose";
	$dbname = "medical";
	

	$connection=mysqli_connect($host="localhost", $user="root", $password="jose") or die('Could not connect to server');
	
	mysqli_select_db($connection, $dbname="medical") or die('Could not connect to database');
		
?>