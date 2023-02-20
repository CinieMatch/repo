/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package com.utilities;


import javax.mail.Message;
//import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 *
 * @author This Pc
 */
public class SendEmail {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        // SMTP configurations
    String smtp_sasl_auth_enable = "yes";
    String smtp_sasl_password_maps = "static:marrshal2000@gmail.com:xznHfIscpgTqOMbw";
    String smtp_sasl_security_options = "noanonymous";
    String smtp_tls_security_level = "may";
    String header_size_limit = "4096000";
    String relayhost = "smtp-relay.sendinblue.com:587";
    String port = "587";
 
    // Recipient's email ID needs to be mentioned.
    String to = "marrshalbenmanuel@gmail.com";
 
    // Sender's email ID needs to be mentioned
    String from = "marrshal2000@gmail.com";
 
    // Get system properties
    Properties properties = System.getProperties();
 
    // Setup mail server
    properties.setProperty("mail.smtp.sasl.auth.enable", smtp_sasl_auth_enable);
    properties.setProperty("mail.smtp.sasl.password.maps", smtp_sasl_password_maps);
    properties.setProperty("mail.smtp.sasl.security.options", smtp_sasl_security_options);
    properties.setProperty("mail.smtp.tls.security.level", smtp_tls_security_level);
    properties.setProperty("mail.smtp.header.size.limit", header_size_limit);
    properties.setProperty("mail.smtp.relayhost", relayhost);
    properties.setProperty("mail.smtp.port", port);
 
    // Get the default Session object.
    Session session = Session.getDefaultInstance(properties);
 
    try {
       // Create a default MimeMessage object.
       MimeMessage message = new MimeMessage(session);
 
       // Set From: header field of the header.
       message.setFrom(new InternetAddress(from));
 
       // Set To: header field of the header.
       message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
 
       // Set Subject: header field
       message.setSubject("This is the Subject Line!");
 
       // Now set the actual message
       message.setText("This is actual message");
 
       // Send message
       Transport.send(message);
       System.out.println("Sent message successfully....");
    } catch (Exception mex) {
       mex.printStackTrace();
    }
    }
    
}
