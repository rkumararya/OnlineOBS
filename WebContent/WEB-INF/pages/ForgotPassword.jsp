<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forgot Password ?</title>
</head>
<body>
	<h1>Forgot Your Password</h1>
	<hr style="height: .4px;" />
	<br/>
	Enter the username you use to sign in to your Oracle Account. Your username is usually your email address.<br/>
	<br/>Our System will send instructions on how to reset your password to the email address associated with your account.<br/>
	<br/>
	<center>
		<form method="post" action="sendEmail.do">
			<table border="0">
				<tr>
					<td>Username/Email :</td>
					<td><input type="text" name="recipient" size="20" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Send E-mail" />
					</td>
				</tr>
			</table>
		</form>
	</center>
	<div class="copyright" align="left">Copyright &copy; 2014. All Rights Reserved</div>
	
	
</body>
</html>