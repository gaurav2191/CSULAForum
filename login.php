<?php
	$con=mysqli_connect("localhost","root","","csulaforum");
	if (mysqli_connect_errno($con))
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$username = $_POST['username'];
	$password = $_POST['password'];
	$result = mysqli_query($con,"SELECT userid,fullname,major FROM user where username='$username' and password='$password'");
	$row = mysqli_fetch_array($result);
	$data = $row[0];
	$data1 = $row[1];
	$data2 = $row[2];
	if($data){
		echo $data . ", ". $data1 . ", ". $data2;
	}
	mysqli_close($con);
?>
