<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Customer Registered</title>
</head>
<body>
	<p align = "center"><img alt="books" src="resources/images/books_promo.png"/></p>
	<h2>
		Welcome ${newCustomer.firstName} !
	</h2>
	<form commandName="registrationDetails">
		<div>
			<br/>
			<table width = "100%">
				<tr>
					<td><b>Your Account Details are as below. Kindly confirm if Correct, else Click <a href = "register"><i>here</i></a> to edit the form back.</b></td>
				</tr>
				<tr/>
				<tr/>
				<tr>
					<td>First Name : ${newCustomer.firstName}</td>
				</tr>
				<tr>
					<td>Last Name : ${newCustomer.lastName}</td>
				</tr>
				<tr>
					<td>Date Of Birth : ${newCustomer.DOB}</td>
				</tr>
				<tr>
					<td>Gender : ${newCustomer.gender}</td>
				</tr>
				<tr>
					<td>Address : ${newCustomer.address}</td>
				</tr>
				<tr>
					<td>City : ${newCustomer.city}</td>
				</tr>
				<tr>
					<td>State : ${newCustomer.state}</td>
				</tr>
				<tr>
					<td>Country : ${newCustomer.country}</td>
				</tr>
				<tr>
					<td>E-mail : ${newCustomer.email}</td>
				</tr>
				<tr>
					<td>Mobile : ${newCustomer.mobile}</td>
				</tr>
			</table>
			
			<br/><br/>
			<table>
				<tr>
					<td><input type="submit" value="Confirm" /></td>
					<!-- <td><input type="submit" value="Edit Details" /></td> -->
				</tr>
			</table>
			
			<!-- Footer Element -->
			<br/>
			<br/>
			<!-- <div style="clear: both;"></div>
			<div>
				<a style="color: #000;" href="sitemap.html">Sitemap</a> &nbsp;
				&nbsp; <a style="color: #000;" href="sitemap.html">FAQ</a>
			</div> -->
			<div class="copyright" align="left">Copyright &copy; <script type="text/javascript"> var d = new Date();
	                  document.write(d.getFullYear());</script>. All Rights Reserved</div>
			
		</div>
	</form>
</body>
</html>