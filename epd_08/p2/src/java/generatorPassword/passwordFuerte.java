/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package generatorPassword;

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
 * @author jalc
 */
@Path("passwordFuerte")
public class passwordFuerte {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of passwordFuerte
     */
    public passwordFuerte() {
    }

    /**
     * Retrieves representation of an instance of passwordFuerte.passwordFuerte
     *
     * @param parametroPass
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String getHtml(@QueryParam("parametroPass") int parametroPass) {

        //TODO return proper representation object
        String construccionPass = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz";

        return password(construccionPass, parametroPass);
    }

    public String password(String construccionPass, int parametroPass) {

        String pass = "";

        for (int i = 0; i < parametroPass; i++) {

            pass += (construccionPass.charAt((int) (Math.random() * construccionPass.length())));

        }

        return pass;
    }

    /**
     * PUT method for updating or creating an instance of passwordFuerte
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.TEXT_HTML)
    public void putHtml(String content) {
    }

}
