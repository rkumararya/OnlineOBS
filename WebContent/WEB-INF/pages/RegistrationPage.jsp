<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
	<!-- Bootstrap CSS and bootstrap datepicker CSS used for styling the demo pages-->
    <!-- <link rel="stylesheet" href="resources/css/datepicker.css"> -->
    <link rel="stylesheet" href="resources/css/bootstrap.css">
    
    <!-- Load jQuery and bootstrap datepicker scripts -->
    <script src="resources/js/jquery-1.9.1.min.js"></script>
    <script src="resources/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
        // When the document is ready
        $(document).ready(function () {
            
            $('#DOB').datepicker({
                format: "mm/dd/yyyy"
            });  
        
        });
    </script>
				        
	<style>
		.error { 
			color: red; font-weight: bold; 
		}
	</style>
	<title>New User Registration Page</title>
</head>

<body>
	<form:form action="" commandName="registrationForm" method="POST">
		<form:errors path="*" cssClass="errorblock" element="div"/>
	<!-- <form name="New_User_form" method="post"> -->
		<div>
			<!-- Body  -->
				<br />
				<img alt="books" src="resources/images/icon.jpeg"/>
				<p align = "right">
					<a href = "home">Go Back To Home Page</a>
				</p>
				<table>
					<h1>New User Registration</h1>
					<hr style="height: .4px;" />
					<!-- <th colspan="2">New User Registration
						<hr style="height: .4px;" />
					</th> -->

					<tr>
						<td>First Name </td>
						<td><form:input type="text" class="defaultInput" path="firstName"/></td>
						<td><form:errors path="firstName" cssClass="error"/></td>
					</tr>
					<tr>
						<td>Last Name </td>
						<td><form:input type="text" class="defaultInput" path="lastName"/></td>
						<td><form:errors path="lastName" cssClass="error"/></td>
					</tr>
					<tr>
						<td>Date of Birth</td>
						<td><!-- <div class="container">
				            <div class="hero-unit"> -->
				                <input  type="text" placeholder="mm/dd/yyyy" path="DOB" id="DOB">
				            <!-- </div>
        				</div> --></td>
        				
						<%-- <td>Date of Birth</td>
						<td><form:input type="text" placeHolder = "mm/dd/yyyy" path="DOB"/></td>
						<td><form:errors path="DOB" cssClass="error"/></td> --%>
					</tr>
					<tr>
						<td>Gender</td>
						<td><select>
								<option></option>
								<option>Male</option>
								<option>Female</option>
								<option>Other</option>
						</select></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><textarea rows="5" cols="20" name="address"></textarea></td>
						<td><form:errors path="address" cssClass="error"/></td>
					</tr>
					<tr>
						<td>City</td>
						<td><form:input type="text" class="defaultInput" path="city"/></td>
						<td><form:errors path="city" cssClass="error"/></td>
					</tr>
					<tr>
						<td>State</td>
						<td><form:input type="text" class="defaultInput" path="state"/></td>
						<td><form:errors path="state" cssClass="error"/></td>
					</tr>
					<tr>
						<td>Country</td>
						<td><form:input type="text" class="defaultInput" path="country"/></td>
						<td><form:errors path="country" cssClass="error"/></td>
					</tr>
					<tr>
						<td>E-Mail</td>
						<td><form:input type="text" class="email" path="email"/></td>
						<td><form:errors path="email" cssClass="error"/></td>
					</tr>
					<tr>
						<td>Mobile Number</td>
						<td><form:input type="text" class="defaultInput" path="mobile"/></td>
						<td><form:errors path="mobile" cssClass="error"/></td>
					</tr>
				</table>
				<br/><br/><br/><br/>
				<table>
					<tr>
						<td><input type="submit" value="Proceed Registration" /></td>
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
	<!-- </form> -->
	</form:form>
</body>
</html>
