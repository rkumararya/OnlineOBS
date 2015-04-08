<html>
<head>
<title>Success Page</title>
</head>
<body>
	<h2>Welcome ${customer.loginName}</h2>
	<p align = "right">
		<a href = "ChangePassword"><i>Change Password</i></a>
	</p>	
	<hr style="height: .4px;" />
 	Login Name : ${customer.loginName}
	<br/> Password : ${customer.password}
	<br /> Confirm Password : ${customer.confirmPassword}
	
	<br/><br/><br/><br/><br/>
	<div class="copyright" align="left">
		Copyright &copy; 
		<script type="text/javascript"> 
			var d = new Date();
	        document.write(d.getFullYear());
	    </script>. 
	    All Rights Reserved
	</div>
</body>
</html>