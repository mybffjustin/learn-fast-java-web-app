package org.justinhoang.api;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import java.io.IOException;
import java.util.Properties;

public class SendEmail
{

    private final  Logger     log = LogManager.getLogger(this.getClass());
    private static Properties properties;

    public SendEmail()
    {
        load();
    }

    private void load()
    {
        properties = new Properties();
        try
        {
            properties.load(this.getClass().getResourceAsStream(
                    "/javamailapi.properties"));
        }
        catch (IOException ioe)
        {
            log.error("Unable to load the properties file: " + ioe);
        }
        catch (Exception e)
        {
            log.error("Error: " + e);
        }
    }

    public void SMTP(String Subject, String msg)
    {
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class",
                 "javax.net.ssl.SSLSocketFactory");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "465");

        Authenticator auth = new Authenticator()
        {
            protected PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication(
                        properties.getProperty("sender"),
                        properties.getProperty("jm.password"));
            }
        };
        Session session = Session.getDefaultInstance(prop, auth);
        EmailUtil.sendEmail(session, properties.getProperty("recipient"),
                            Subject,
                            msg);

    }

}