package utilities;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SMTP {

    private static SMTP instance = null;
    
    private String host;
    private String port;
    private String email;
    private String password;
    private Session session;
    
    private SMTP() {
        this.host = ConfigManagement.getInstance().getConfigValue("SMTP_HOST");
        this.port = ConfigManagement.getInstance().getConfigValue("SMTP_PORT");
        this.email = ConfigManagement.getInstance().getConfigValue("SMTP_ACCOUNT_EMAIL");
        this.password = ConfigManagement.getInstance().getConfigValue("SMTP_ACCOUNT_PASSWORD");

        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, password);
            }
        };
        
        this.session = Session.getInstance(props, auth);
    }

    public static synchronized SMTP getInstance() {
        if (instance == null) {
            instance = new SMTP();
        }
        return instance;
    }

    public void sendMimeMessage(String sender, String recipient, String subject, String text) 
            throws AddressException, MessagingException, UnsupportedEncodingException {
        
        MimeMessage msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(email, sender));
        msg.setReplyTo(InternetAddress.parse(email, false));
        msg.setSubject(subject, "UTF-8");
        msg.setText(text, "UTF-8");
        msg.setSentDate(new Date());
        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient, false));
        
        Transport.send(msg);
    }
}