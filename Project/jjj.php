

		<?PHP
		include 'connect.php';
		$query = "SELECT * FROM `outpass` ORDER BY `sno` DESC";
		$sql = mysqli_query($conn, $query);
		$row = mysqli_fetch_array($sql);
			echo $row['sno'] ;
		?>