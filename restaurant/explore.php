<html>
 <head>
  <title>Search</title>	

 </head>
 <body>
 <form action = "search.php" method = "POST">
 	<input type = "text" name = "search food" placeholder="Search Food">
 	<button type = "submit" name = "submit-search"> Search </button>
 </form>

 <h1> Search result </h1>
 <div class = "search-result-container">
 	<?php
 	  $r_db = mysqli_connect("localhost","root", "", "restaurant");
 		$query = "SELECT * FROM food";
 		$result = mysqli_query($r_db, $query);
 		$numResult = mysqli_num_rows($result);

 		if ($numResult > 0) {
 			while ($tuple = mysqli_fetch_assoc($result))
 				echo "<div>
 					<h2>".$tuple['Type']."</h3>
 					<p>".$tuple['Food_id']."</p>
 					<p>".$tuple['Picture']."</p>
 					<p>".$tuple['Name']."</p>
 					<p>".$tuple['Avaliability']."</p>
 					<p>".$tuple['Price']."</p>
 				</div>";


 		}
 	?>
 </div>
 </body>
</html>