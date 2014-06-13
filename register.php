<?php
	
	$con=mysqli_connect("localhost","root","","csulaforum");
	if (mysqli_connect_errno($con))
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	if (isset($_POST['fullname']) && isset($_POST['email']) && isset($_POST['username']) && isset($_POST['password']) && isset($_POST['major'])) {
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$major = $_POST['major'];
	
    $sql="INSERT INTO user(fullname,username,email,major,password) VALUES('$fullname', '$username', '$email','$major','$password')";
	if(mysqli_query($con,$sql)){
		echo 1;
	}
	else{
		echo 0;
	}
	} else {
		echo "Required field(s) is missing";
	}
	mysqli_close($con);
?>
