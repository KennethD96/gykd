<?php

	if (file_exists('i/' . $_GET['i'] . '.png')) {
	include('imageloader.php');
	} else {
	include('err/imgnf.php');
	}
	?>