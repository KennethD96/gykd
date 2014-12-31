<?php
	include('var/variables.php');

?>
<!DOCTYPE html>
<html>
	<head>
		<title><?php echo $title ?></title>

		<?php
			include('var/global.php');
			include('inc/lang.php');
		?>

		<LINK href="/inc/global.css" rel="stylesheet" type="text/css">
		<LINK href="/inc/style.css" rel="stylesheet" type="text/css">
		<link rel="icon" href="res/favico.png" sizes="32x32">
		<?php
			include_once("inc/analyticstracking.php");
		?>
	</head>
<body>

	<div>
		<a href="<?php echo $imgURL ?>"><img style="width:auto;height:auto;" class="img" src="<?php echo $imgURL ?>" draggable="false" alt="res/imgnotavailable.png"></a>
	</div>

<div class="img_navbar">
		<a href="/">
		<img class="img_navlogo" src="res/navlogo.png" alt="res/imgnotavailable.png" draggable="false"></a>
		<p style="position:absolute;width:10px;height:64px;top:0;margin-left:145px;color:white;font-size:16px;font-family:Segoe UI, Arial;"><?php echo $gyVer ?></p>

		<div class="img_info">
			<p>
				<span style="font-size:12px;color:white;"><?php echo $imgID  ?></span>
					<br>
				<?php echo  ' ' . date ("d. M Y H:i", filemtime($imgURL));?>
					<br>
				<?php
					list($width, $height) = getimagesize("$imgURL");
					echo $imgSize ?><span><?php echo ' ' . $width . ' x ' . $height ?></span>
			</p>
		</div>
		<div class="nav_warn_right"><p>Warning: This service will be discontinued as of Jan 1st and all images will be removed.</p></div>
</div>

</body>
</html>