/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ausiasmarch.service.specificservice_0;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.apache.ApacheHttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.StringUtils;
import com.google.gson.Gson;
import java.sql.Connection;
import java.util.Collections;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.ausiasmarch.bean.ResponseBean;
import net.ausiasmarch.bean.UsuarioBean;
import net.ausiasmarch.connection.ConnectionInterface;
import net.ausiasmarch.dao.specificdao_0.UsuarioDao_0;
import net.ausiasmarch.factory.ConnectionFactory;
import net.ausiasmarch.factory.GsonFactory;
import net.ausiasmarch.helper.Log4jHelper;
import net.ausiasmarch.service.genericservice.GenericService;
import net.ausiasmarch.service.serviceinterface.ServiceInterface;
import net.ausiasmarch.setting.ConnectionSettings;

/**
 *
 * @author alejandro
 */
public class UsuarioService_0 extends GenericService implements ServiceInterface {

    ResponseBean oResponseBean = null;
    UsuarioBean oUsuarioBeanSession;
    Connection oConnection = null;
    Gson oGson = GsonFactory.getGson();
    HttpSession oSession = oRequest.getSession();

    public UsuarioService_0(HttpServletRequest oRequest) {
        super(oRequest);
        ob = oRequest.getParameter("ob");
    }

    public String login() throws Exception {
        ConnectionInterface oConnectionImplementation = null;
        UsuarioBean oUsuarioBean;
        String token = oRequest.getParameter("token");
        try {
            if (token == null) {
                oConnectionImplementation = ConnectionFactory.getConnection(ConnectionSettings.connectionPool);
                oConnection = oConnectionImplementation.newConnection();
                UsuarioDao_0 oUsuarioDao = new UsuarioDao_0(oConnection, "usuario", oUsuarioBeanSession);
                String login = oRequest.getParameter("username");
                String password = oRequest.getParameter("password");
                oUsuarioBean = oUsuarioDao.get(login, password);

                if (oUsuarioBean != null) {
                    if (oRequest.getParameter("username").equals(oUsuarioBean.getLogin()) && oRequest.getParameter("password").equalsIgnoreCase(oUsuarioBean.getPassword())) {
                        oSession.setAttribute("usuario", oUsuarioBean);
                        oResponseBean = new ResponseBean(200, "Welcome to Trolleyes");
                    } else {
                        oResponseBean = new ResponseBean(500, "Authentication failed");
                    }
                } else {
                    oResponseBean = new ResponseBean(500, "Authentication failed");
                }
            } else {
                ApacheHttpTransport.Builder builder = new ApacheHttpTransport.Builder();

                GoogleIdTokenVerifier localVerifier = new GoogleIdTokenVerifier.Builder(builder.build(), new JacksonFactory())
                        .setAudience(Collections.singletonList("903685484341-9dl5ldv3ifj3vv5a7rqn9sbqn2tgg8i3.apps.googleusercontent.com"))
                        .build();

                GoogleIdToken idToken = localVerifier.verify(token);
                if (idToken != null) {
                    Payload payload = idToken.getPayload();
                    String email = payload.getEmail();
                    int index = email.indexOf('@');
                    String username = email.substring(0, index);
                    oConnectionImplementation = ConnectionFactory.getConnection(ConnectionSettings.connectionPool);
                    oConnection = oConnectionImplementation.newConnection();
                    UsuarioDao_0 oUsuarioDao = new UsuarioDao_0(oConnection, "usuario", oUsuarioBeanSession);
                    oUsuarioBean = oUsuarioDao.get(username);

                    if (oUsuarioBean != null) {
                        oSession.setAttribute("usuario", oUsuarioBean);
                        oResponseBean = new ResponseBean(200, "Welcome to Trolleyes");
                    } else {
                        if (oUsuarioDao.insert(email, username) == 0) {
                            oResponseBean = new ResponseBean(400, "The account could not be created");
                        } else {
                            oSession.setAttribute("usuario", oUsuarioBean);
                            oResponseBean = new ResponseBean(200, "Welcome to Trolleyes");
                        }
                    }
                } else {
                    oResponseBean = new ResponseBean(500, "Authentication failed");
                }

            }
            return oGson.toJson(oResponseBean);

        } catch (Exception ex) {
            String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName() + " ob:" + ob;
            Log4jHelper.errorLog(msg, ex);
            throw new Exception(msg, ex);
        } finally {
            if (oConnection != null) {
                oConnection.close();
            }
            if (oConnectionImplementation != null) {
                oConnectionImplementation.disposeConnection();
            }
        }
    }

    public String logout() {
        oRequest.getSession().invalidate();
        ResponseBean oResponseBean = new ResponseBean(200, "No active session");
        return oGson.toJson(oResponseBean);
    }

    public String check() throws Exception {
        ConnectionInterface oConnectionImplementation = null;
        try {
            oConnectionImplementation = ConnectionFactory.getConnection(ConnectionSettings.connectionPool);
            oConnection = oConnectionImplementation.newConnection();
            UsuarioBean oUsuarioBean;
            oUsuarioBean = (UsuarioBean) oSession.getAttribute("usuario");
            UsuarioDao_0 oUsuarioDao = new UsuarioDao_0(oConnection, "usuario", oUsuarioBeanSession);

            if (oUsuarioBean == null) {
                oResponseBean = new ResponseBean(500, "No autorizado");
            } else {
                oUsuarioBean = oUsuarioDao.get(oUsuarioBean.getLogin());
                return "{\"status\":200,\"message\":" + oGson.toJson(oUsuarioBean) + "}";
            }

        } catch (Exception ex) {
            String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName() + " ob:" + ob;
            Log4jHelper.errorLog(msg, ex);
            throw new Exception(msg, ex);
        } finally {
            if (oConnection != null) {
                oConnection.close();
            }
            if (oConnectionImplementation != null) {
                oConnectionImplementation.disposeConnection();
            }
        }
        return oGson.toJson(oResponseBean);
    }
}
