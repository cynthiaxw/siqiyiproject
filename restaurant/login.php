<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Restaurant Reservation System</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<h2>Login</h2>
	</div>

	<form method="post" action="login.php">

		<?php include('errors.php'); ?>

		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" >
			<label>Password</label>
			<input type="password" name="password">
			<button type="submit" class="button" name="login_done">Login</button>
		</div>
		<center><p>
			Not yet a member? <a href="register.php">Sign up.</a>
			<br/><a href="homepage.php">Back to home page.</a>
		</p></center>
	</form>


</body>
</html>
