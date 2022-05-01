package org.justinhoang.persistence;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.justinhoang.api.ProgrammingQuotes;
import org.justinhoang.util.PropLoader;

import java.io.IOException;
import java.util.Properties;

/**
 * The type Pro quote dao.
 * Consumes public api using Java.
 * ProgrammingQuotesApi v2
 * https://programming-quotes-api.herokuapp.com/index.html
 */
public class ProQuoteDao implements PropLoader
{
    static final Logger     log = LogManager.getLogger();
    Properties prop;

    /**
     * Instantiates a new Pro quote dao.
     */
    public ProQuoteDao()
    {
        load();
    }

    private void load()
    {
        prop = new Properties();
        try
        {
            prop.load(this.getClass()
                          .getResourceAsStream("/proquotedao.properties"));
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

    /**
     * Gets quote.
     *
     * @return the quote
     */
    public ProgrammingQuotes getQuote()
    {
        Client    client = ClientBuilder.newClient();
        WebTarget target = client.target(prop.getProperty("uri"));
        String response =
                target.request(MediaType.APPLICATION_JSON).get(String.class);
        ObjectMapper      mapper            = new ObjectMapper();
        ProgrammingQuotes programmingQuotes = null;
        try
        {
            programmingQuotes =
                    mapper.readValue(response, ProgrammingQuotes.class);
        }
        catch (JsonProcessingException e)
        {
            log.info(e);
            e.printStackTrace();
        }
        return programmingQuotes;
    }
}
