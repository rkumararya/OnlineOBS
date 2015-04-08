package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sendEmail.do")
public class EmailController {

	@Autowired
	public JavaMailSender mailSender;
	
	@RequestMapping(method = RequestMethod.POST)
	public String doSendEmail(HttpServletRequest request) {
		// takes input from e-mail form
		String recipientAddress = request.getParameter("recipient");
		String subject = "OBS : Reset your Password";
		String message = "Hi User,\n"
				+ "\nYour new password is JACKASDR@123"
				+ "\nThanks, \n Operations Team.";
		
		// prints debug info
		System.out.println("To: " + recipientAddress);
		System.out.println("Subject: " + subject);
		System.out.println("Message: " + message);
		
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);
		
		// sends the e-mail
		mailSender.send(email);
		
		// forwards to the view named "Result"
		return "EmailSentSuccessfull";
	}
}