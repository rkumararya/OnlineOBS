<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Change Your Account Password</title>
<link rel="stylesheet" href="resources/css/menuTemplate3.css" type="text/css"></link>
</head>

<body>
	<h1>Change your Account password</h1>

	<h3>Password requirements</h3>
	<p>Here are a few rules to keep in mind when choosing a password:</p>
	<ul>
		<li>Passwords must be at least 8 characters long.</li>
		<li>You can&#39;t reuse a password that you've used in the last year.</li>
		<li>Passwords can contain the following characters:
		<ul>
			<li>Upper and lowercase letters (A-Z and a-z). Please note that passwords are case-sensitive, so a "G" is different from a "g".</li>
			<li>Numbers (0-9).</li>
			<li>The following symbols as well as spaces:  ! &#39; "  #  $  %  &amp;    (  )  *  +  ,  -  .  /  :  ;  &lt;  =  &gt;  ?  @  [  \  ] ^ {  |  }  ~</li>
		</ul>
		</li>
		<li>Certain passwords that are easy to guess like "12345678" can&#39;t be chosen.</li>
	</ul>
	
	<br/>
	<br/>
	<br/>
	<h3>Change Password</h3>
	<br/>To reset your password, provide your current password OR the answer to your security question.
	
	<form action="" method="POST">
		<p>
			<div class="radio-option">
				<input type="radio" name="preoption" value="1" id="1" default = "true">
				<label class="radio-label" for="2">Current Password</label>
				<input type="text" name="currentPassword" value="" class="english-text" size="30">
			</div>
		</p>
		<hr style="height: .1px;" />
		<h2>OR</h2>
		<hr style="height: .1px;" />
		<p>
			<div class="radio-option">
				<input type="radio" name="preoption" value="2" id="2" onclick="recoveryOptionSelected()">
				<label class="radio-label" for="2">What was your first Phone number?</label>
				<input type="text" name="securityQuestion" value="" class="english-text" size="30">
			</div>
		</p>
		<br/>
		<br/>
		<p>
			<label class="text-label" for="2">New Password : </label>
			<input type="text" name="newPassword" value="" class="english-text" size="30">
		</p>
		<p>
			<label class="text-label" for="2">Confirm Password : </label>
			<input type="text" name="confirmPassword" value="" class="english-text" size="30">
		</p>
		<p class="recovery-submit"><input type="submit" value="Continue" class="button g-button g-button-submit"></p>
	</form>
	
</body>
</html>	