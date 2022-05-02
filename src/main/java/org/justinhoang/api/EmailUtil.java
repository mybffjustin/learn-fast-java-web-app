package org.justinhoang.api;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;

/**
 * The type Email util.
 */
public class EmailUtil
{
    static final Logger log = LogManager.getLogger();

    private EmailUtil()
    {
    }

    /**
     * Send email.
     *
     * @param session
     *         the session
     * @param recipient
     *         the recipient
     * @param subject
     *         the subject
     * @param body
     *         the body
     */
    public static void sendEmail(final Session session, final String recipient,
                                 final String subject, final String body)
    {

        try
        {
            MimeMessage msg = new MimeMessage(session);

            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            msg.addHeader("format", "flowed");
            msg.addHeader("Content-Transfer-Encoding", "8bit");

            msg.setFrom(new InternetAddress("addy@host.com", "Addy"));

            msg.setReplyTo(InternetAddress.parse("addy@host.com", false));

            msg.setSubject(subject, "UTF-8");

            msg.setText(body, "UTF-8");

            msg.setSentDate(new Date());

            msg.setRecipients(Message.RecipientType.TO,
                              InternetAddress.parse(recipient, false));
            Transport.send(msg);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
