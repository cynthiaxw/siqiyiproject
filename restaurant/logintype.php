<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Restaurant Reservation SystemL</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<h2>Login</h2>
	</div>

	<form method="post" action="homepage.php">

		<?php include('errors.php'); ?>
		<div class="input-group">
      <br/><button type="submit" class="button" name="login_staf">Customer Login</button>
			<br/><button type="submit" class="button" name="login_cust">Manager Login</button>
      <br/><button type="submit" class="button" name="login_mngr">Staff Login</button>
		</div>
		<center><p>
			Not yet a member? <a href="register.php">Sign up</a>
		</p></center>
	</form>


</body>
</html>
