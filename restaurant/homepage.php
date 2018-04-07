<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Restaurant Reservation SystemL</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<h2>Secret of Pepper</h2>
	</div>

	<form method="post" action="homepage.php">

		<?php include('errors.php'); ?>
		<div class="input-group">
      <br/><button type="submit" class="button" name="btn_explore">Explore</button>
			<br/><button type="submit" class="button" name="btn_search">Search</button>
      <br/><button type="submit" class="button" name="btn_login">Login</button>
		</div>
	</form>


</body>
</html>
