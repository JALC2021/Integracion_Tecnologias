/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wsRest;

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
@Path("Factorial")
public class Factorial {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of GenericResource
     */
    public Factorial() {
    }

    /**
     * Retrieves representation of an instance of wsRest.Factorial
     *
     * @param base
     * @return an instance of java.lang.String
     */
    
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String factorialHtml(@QueryParam("base") long base) {
        //TODO return proper representation object
        return "<html><body><h1>" + Long.toString(factorialLong(base)) + "</h1></body></html>";
    }

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String factorialTextPlain(@QueryParam("base") long base) {
        return Long.toString(factorialLong(base));
    }

    /**
     * PUT method for updating or creating an instance of Factorial
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.TEXT_HTML)
    public void putHtml(String content) {
    }

    public long factorialLong(long base) {
        long resultado;
        if (base >= 1) {
            resultado = factorialLong(base - 1) * base;
        } else {
            resultado = 1;
        }
        return resultado;
    }

}
