<?php include('server.php') ?>
<?php
//Home page
if(isset($_POST['btn_login'])){
	header('location: logintype.php');
}
if(isset($_POST['btn_search'])){
	header('location: search.php');
}
if(isset($_POST['btn_explore'])){
	header('location: explore.php');
}
if (isset($_GET['logout'])) {
 unset($_SESSION['username']);
 header("location: homepage.php");
}
 ?>
 <?php  if (isset($_SESSION['username'])) : ?>
	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
	<p> <a href="homepage.php?logout='1'" style="color: red;">logout</a> </p>
 <?php endif ?>


<!DOCTYPE html>
<html>
<head>
	<title>Restaurant Reservation System</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<h2>Secret of Pepper</h2>
	</div>

	<form method="post" action="homepage.php">

		<div class="input-group">

      <br/><button type="submit" class="button" name="btn_explore">Explore</button>
			<br/><button type="submit" class="button" name="btn_search">Search</button>
       <?php  if (!isset($_SESSION['username'])) : ?>
				 <br/><button type="submit" class="button" name="btn_login">Login</button>
			 <?php endif ?>
		</div>
	</form>
</body>
</html>
