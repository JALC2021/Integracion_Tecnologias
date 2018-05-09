/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clienteRest;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;

/**
 * Jersey REST client generated for REST resource:passwordFuerte
 * [passwordFuerte]<br>
 * USAGE:
 * <pre>
 *        generatorPasswordJerseyClient client = new generatorPasswordJerseyClient();
 *        Object response = client.XXX(...);
 *        // do whatever with response
 *        client.close();
 * </pre>
 *
 * @author jalc
 */
public class generatorPasswordJerseyClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/p2/webresources";

    public generatorPasswordJerseyClient() {
        client = javax.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("passwordFuerte");
    }

    /**
     * @param <T>
     * @param responseType Class representing the response
     * @param parametroPass query parameter
     * @return response object (instance of responseType class)
     */
    public <T> T getHtml(Class<T> responseType, String parametroPass) throws ClientErrorException {
        String[] queryParamNames = new String[]{"parametroPass"};
        String[] queryParamValues = new String[]{parametroPass};
        ;
        javax.ws.rs.core.Form form = getQueryOrFormParams(queryParamNames, queryParamValues);
        javax.ws.rs.core.MultivaluedMap<String, String> map = form.asMap();
        for (java.util.Map.Entry<String, java.util.List<String>> entry : map.entrySet()) {
            java.util.List<String> list = entry.getValue();
            String[] values = list.toArray(new String[list.size()]);
            webTarget = webTarget.queryParam(entry.getKey(), (Object[]) values);
        }
        return webTarget.request(javax.ws.rs.core.MediaType.TEXT_HTML).get(responseType);
    }

    private Form getQueryOrFormParams(String[] paramNames, String[] paramValues) {
        Form form = new javax.ws.rs.core.Form();
        for (int i = 0; i < paramNames.length; i++) {
            if (paramValues[i] != null) {
                form = form.param(paramNames[i], paramValues[i]);
            }
        }
        return form;
    }

//    public String getHtml(String parametroPass) throws ClientErrorException {
//        WebTarget resource = webTarget;
//        if (parametroPass != null) {
//            resource = resource.queryParam("parametroPass", parametroPass);
//        }
//        return resource.request(javax.ws.rs.core.MediaType.TEXT_HTML).get(String.class);
//    }
    /**
     * @param requestEntity request data@return response object (instance of
     * responseType class)
     */
    public void putHtml(Object requestEntity) throws ClientErrorException {
        webTarget.request(javax.ws.rs.core.MediaType.TEXT_HTML).put(javax.ws.rs.client.Entity.entity(requestEntity, javax.ws.rs.core.MediaType.TEXT_HTML));
    }

    public void close() {
        client.close();
    }

}
