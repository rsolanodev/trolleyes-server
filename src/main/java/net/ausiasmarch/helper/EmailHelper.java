/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ausiasmarch.helper;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Ruben
 */
public class EmailHelper {

    public static void sendEmail(String from, String to, String pass, String emailSubject, String emailText) throws Exception {
        Properties oProperties = new Properties();
        oProperties.setProperty("mail.smtp.host", "smtp.gmail.com");
        oProperties.setProperty("mail.smtp.starttls.enable", "true");
        oProperties.setProperty("mail.smtp.port", "587");
        oProperties.setProperty("mail.smtp.user", from);
        oProperties.setProperty("mail.smtp.auth", "true");
        Session session = Session.getDefaultInstance(oProperties);
        try {
            MimeMessage oMimeMessage = new MimeMessage(session);
            oMimeMessage.setFrom(new InternetAddress(from));
            oMimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            oMimeMessage.setSubject(emailSubject, "utf-8");
            oMimeMessage.setText(emailText, "utf-8", "html");
            Transport oTransport = session.getTransport("smtp");
            oTransport.connect(from, pass);
            oTransport.sendMessage(oMimeMessage, oMimeMessage.getAllRecipients());
            oTransport.close();
        } catch (MessagingException oMessagingException) {
            String msg = "Ha ocurrido un error al enviar el mensaje: " + oMessagingException.getMessage();
            System.out.println(msg);
            Log4jHelper.errorLog(msg, oMessagingException);
            throw new MessagingException(msg, oMessagingException);
        }
    }
}
