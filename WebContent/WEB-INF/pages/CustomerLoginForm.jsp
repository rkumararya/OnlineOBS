<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
	<style>
		.error { 
			color: red; font-weight: bold; 
		}
	</style>
	<title>Form For Password Validation</title>
	<link rel="stylesheet" href="resources/css/menuTemplate3.css" type="text/css"></link>
</head>
<body>
	<form:form action="" commandName="loginForm" method="POST">
		<form:errors path="*" cssClass="errorblock" element="div"/>
		
		<img alt="books" src="resources/images/index.jpg" width = "100%" height = "20%"/>
		<img alt="books" src="resources/images/giphy.gif" width = "100%" height = "60%"/>
		<!-- <img alt="books" src="file:///c:/index.jpg" width="100%" height="20%"> -->
<%-- 		<img src = "<%=request.getContextPath()%>resources/images/index.jpg"/>
		<img src="<%=request.getContextPath()%>/images/index.gif"/> --%>
		<!-- <img src = "file:///c:/Resident_login.jpg"><h2>Customer Login Page</h2></img> -->
		
		<!-- <div><img src="./resources/images/login.jpg"></div> -->

		
		<p align = "right">
			<a href = "home">Go Back To Home Page</a>
		</p>
		<!-- <div><img src="resources/images/login.jpg"/></div> -->
		<h2><img src="resources/images/login.jpg"/>Customer Login Page</h2>
		<table>
			<!-- <tr><td><img src="Resident_login.jpg"/></td></tr> -->
			<%-- <img src = "<%=request.getContextPath()%>/image/Resident_login.jpg"/> --%>
			<tr>
				<td>Login Name : </td>
				<td><form:input path="loginName"/></td>
				<td><form:errors path="loginName" cssClass="error"/></td>
			</tr>
			<tr>
				<td>Password : </td>
				<td><form:password path="password"/></td>
				<td><form:errors path="password" cssClass="error"/></td>
			</tr>
			
			<tr>
				<td>Confirm Password : </td>
				<td><form:password path="confirmPassword"/></td>
				<td><form:errors path="confirmPassword" cssClass="error"/></td>
			</tr>
			<tr>
				<td colspan="10"><input type = "submit" value="Submit"/></td>
			</tr>
		</table>
		
	<br/>
	<br/>
	<a href = "ForgotPassword"><i>Forgot Password?</i></a>
	<a href = "register"><i>New User?</i></a>
	<a href = "maps"><i>Goto Maps</i></a>
	<br/><br/><br/><br/><br/>
	<!-- <div class="copyright" align="left">Copyright &copy; 2014. All Rights Reserved</div> -->
	<div class="footer-company-info">
		&copy; <script type="text/javascript"> var d = new Date();
	                  document.write(d.getFullYear());</script>
		<a href="http://www.gopivotal.com/">Book Store Software</a>, Inc. All Rights Reserved.
		<a href="http://www.gopivotal.com/terms-of-use">Terms of Use</a> and
		<a href="http://www.gopivotal.com/privacy-policy">Privacy</a>
	</div>
	<div class="footer-newsletter--container">
		<label>Subscribe to our newsletter</label>
		<iframe width="324px" height="42px" frameborder="0" src="" style="border:none" scrolling="no"></iframe>
	</div>
	</form:form>
	
</body>
</html>