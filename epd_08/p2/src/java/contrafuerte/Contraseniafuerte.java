/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contrafuerte;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author joni
 */
@Path("contrafuerte")
public class Contraseniafuerte {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of Contraseniafuerte
     */
    public Contraseniafuerte() {
    }

    /**
     * Retrieves representation of an instance of contrafuerte.Contraseniafuerte
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String getHtml(@QueryParam("longitud")int longitud) {
        //TODO return proper representation object
        String key = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        
        
        return getPassword(key,longitud);
    }

    /**
     * PUT method for updating or creating an instance of Contraseniafuerte
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.TEXT_HTML)
    public void putHtml(String content) {
    }
    
    
    public  String getPassword(String key, int longitud) {
		String pswd = "";
 
		for (int i = 0; i < longitud; i++) {
			pswd+=(key.charAt((int)(Math.random() * key.length())));
		}
 
		return pswd;
	}
}
