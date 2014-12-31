<?php
	// Gyazo Upload Script for K96.co
	error_reporting(E_ERROR); // Prevents PHP spewing out debug info to the client.
	// find -type f -name '*.png' | while read f; do mv "$f" "${f%.png}"; done // This command will be used to remove the .png extention from old files.
		
	// Variables
		
		$echoURL = 'https://K96.co/';
		$savePath = '/var/www/imgstorage/i/1/';
		
		$randChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
		$fileExist = false;
		
		//include('../inc/SQL_auth.php'); // $SQL_server, $SQL_db, $SQL_user, $SQL_password
		
	// Body

		function save($idLen) {
			global $echoURL, $savePath, $randChars, $fileExist, $imgID, $imgPath;
			
			for ( $c = 0; $c <= 32; $c++) {	
				$imgID = substr(str_shuffle(str_repeat($randChars, $idLen)), 0 , $idLen);
				$imgPath = $savePath . $imgID . '.png';
				
				if (file_exists($imgPath)) {
					$fileExist = true;
				
				} else {
					$fileExist = false;
					move_uploaded_file($_FILES['imagedata']['tmp_name'], $imgPath);
					echo $echoURL . $imgID;
						//SQL($imgID);
					break;
		}}}
		
		/*function SQL($imgID) {
			global $SQL_server, $SQL_user, $SQL_password, $SQL_db;
			$date = date("Y-m-d H:i:s");
			$sql_connect = new mysqli($SQL_server, $SQL_user, $SQL_password, $SQL_db);
			mysqli_query($sql_connect, "INSERT INTO image ( ID, DATE, VIEWS ) VALUES ('" . $imgID ."', '" . $date . "', 0)" );
				mysqli_close($sql_connect);
		}*/
		
	if(isset($_FILES['imagedata']['tmp_name'])) {
		save(5);
			if ($fileExist == true) {
				save(6);
					if ($fileExist == true) {
					echo 'error: Could not generate image ID. Please contact administrator.'; 
	}}}		else { include("huehue.php"); echo $hue; } // Insert your own Easter Egg here.
?>