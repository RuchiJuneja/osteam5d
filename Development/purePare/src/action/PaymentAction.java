package action;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.crypto.*;


import com.opensymphony.xwork2.ActionSupport;

public class PaymentAction extends ActionSupport {
	
	public String paymentAck(){
		return SUCCESS;
	}
	
	public String pay(){
		
		String host = "smtp.gmail.com";
		String port = "587";
		String mailFrom = "bitcoins.iiitb@gmail.com";
		String password = "bitcoins$";

		// message info
		String mailTo = "ruks_rs@yahoo.com";
		String subject = "New email with attachments";
		String message = "I have some attachments for you.";

		// attachments
		String[] attachFiles = new String[2];
		attachFiles[0] = "C:\\Users\\ruchi\\Desktop\\images(1).jpg";
		attachFiles[1] = "C:\\Users\\ruchi\\Desktop\\bitcoin1.jpg";
		
		try {
			sendEmailWithAttachments(host, port, mailFrom, password, mailTo, subject, message, attachFiles);
			System.out.println("Email sent.");
		} 
		catch (Exception ex) {
			System.out.println("Could not send email.");
			ex.printStackTrace();
		}
		
		return SUCCESS;
	}
	
	
	public void sendEmailWithAttachments(String host, String port,
			final String userName, final String password, String toAddress,
			String subject, String message, String[] attachFiles)
			throws AddressException, MessagingException{
				
				// sets SMTP server properties
				Properties properties = new Properties();
				properties.put("mail.smtp.host", host);
				properties.put("mail.smtp.port", port);
				properties.put("mail.smtp.auth", "true");
				properties.put("mail.smtp.starttls.enable", "true");
				properties.put("mail.user", userName);
				properties.put("mail.password", password);

				// creates a new session with an authenticator
				Authenticator auth = new Authenticator() {
					public PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(userName, password);
					}
				};
				Session session = Session.getInstance(properties, auth);

				// creates a new e-mail message
				Message msg = new MimeMessage(session);

				msg.setFrom(new InternetAddress(userName));
				InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
				msg.setRecipients(Message.RecipientType.TO, toAddresses);
				msg.setSubject(subject);
				msg.setSentDate(new Date());

				// creates message part
				MimeBodyPart messageBodyPart = new MimeBodyPart();
				messageBodyPart.setContent(message, "text/html");

				// creates multi-part
				Multipart multipart = new MimeMultipart();
				multipart.addBodyPart(messageBodyPart);

				// adds attachments
				if (attachFiles != null && attachFiles.length > 0) {
					for (String filePath : attachFiles) {
						MimeBodyPart attachPart = new MimeBodyPart();

						try {
							attachPart.attachFile(filePath);
						} catch (IOException ex) {
							ex.printStackTrace();
						}

						multipart.addBodyPart(attachPart);
					}
				}

				// sets the multi-part as e-mail's content
				msg.setContent(multipart);

				// sends the e-mail
				Transport.send(msg);
	}
}
