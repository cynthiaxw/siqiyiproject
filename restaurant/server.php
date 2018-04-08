<?php
	session_start();
	// variable declaration
	$username = "";
	$email    = "";
	$phone		= "";
	$errors = array();
	$_SESSION['success'] = "";
	$usertype = 0;	//0: cutsomer, 1: manager, 2: staff

	// connect to database
	$db = mysqli_connect('localhost', 'root', '', 'registration');

	// Choose login user type
	if (isset($_POST['login_cust'])){
		header('location: login.php');
		$usertype = 0;
	}
	if(isset($_POST['login_mngr'])){
		header('location: login.php');
		$usertype = 1;
	}
	if(isset($_POST['login_staf'])){
		header('location: login.php');
		$usertype = 2;
	}


	// LOGIN USER
	if (isset($_POST['login_done'])) {
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$password = mysqli_real_escape_string($db, $_POST['password']);

		if (empty($username)) {
			array_push($errors, "Username is required");
		}
		if (empty($password)) {
			array_push($errors, "Password is required");
		}

		if (count($errors) == 0) {
			$password = md5($password);
		//	if($usertype == 0)$query = "SELECT * FROM customer WHERE user_name='$username' AND password='$password'";
			if($usertype == 0)$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
			else if($usertype == 1)$query = "SELECT * FROM manager WHERE user_name='$username' AND password='$password'";
			else if($usertype == 2)$query = "SELECT * FROM resaurant_staff WHERE user_name='$username' AND password='$password'";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['username'] = $username;
			//	$_SESSION['success'] = "You are now logged in";
				header('location: homepage.php');
			}else {
				array_push($errors, "Wrong username or password.");
			}
		}
	}

?>

<?php  if (count($errors) > 0) : ?>
	<div class="error">
		<?php foreach ($errors as $error) : ?>
			<p><?php echo $error ?></p>
		<?php endforeach ?>
	</div>
<?php  endif ?>
