<?php
	//Start session
	session_start();
	
	//Unset the variables stored in session
	unset($_SESSION['SESS_ADMIN_ID']);
	unset($_SESSION['SESS_ADMIN_NAME']);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Logged Out</title>
<link href="stylesheets/admin_styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="page">
<div id="header">
<h1>Logout </h1>
<p align="center">&nbsp;</p>
</div>
<h4 align="center" class="err">You have been logged out.</h4>
<p align="center"><a href="login-form.php">Click Here</a> to Login</p>
<div id="footer">
<div class="bottom_addr">&copy; 2017-2018 Digital Restaurant. All Rights Reserved</div>
</div>
</div>
</body>
</html>
