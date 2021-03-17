/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.project.controller;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Teju   private String ;  private String ;
    private String ;
    private String ;
    private ;
 */
public class SendMail {
    public static void send(String txtName, String txtSub, String txtEmail,String txtMobNo, String txtFeedback ) {

         
        final String username = "sujakarne208@gmail.com";//change accordingly
        final String password = "suja1234";//change 
  
         
          String host = "smtp.gmail.com";
        
   
        Properties properties = new Properties();
//        properties.put("mail.smtp.auth", "true");
//        properties.put("mail.smtp.starttls.enable", "true");
//        properties.put("mail.smtp.host", host);
//        properties.put("mail.smtp.port", "587");

        //for webmail
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        // Setup mail server
        properties.setProperty("smtp.gmail.com", host);

        // Get the default Session object.
        Session session = Session.getInstance(properties,
                new javax.mail.Authenticator() 
                {
                    protected PasswordAuthentication getPasswordAuthentication()
                    {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(username));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(username));

            // Set Subject: header field
            String m= " Name:-" + txtName + "\n Subject:- " + txtSub + "\n Email:-" + txtEmail + "\n Mobile Number:-" + txtMobNo + "\n Feedback:-" + txtFeedback;
            message.setText(m);
            

            
           // message.setText(first);
            //message.setText(last);
           // message.setText(msg);

            // Send the actual HTML message, as big as you like
            // Send message
            
            System.out.println("Sending");
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
   }

    }

    
    
    

    

