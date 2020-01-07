/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ausiasmarch.service.specificservice_0;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.apache.ApacheHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.gson.Gson;
import java.sql.Connection;
import java.util.Collections;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import net.ausiasmarch.bean.ResponseBean;
import net.ausiasmarch.bean.UsuarioBean;
import net.ausiasmarch.connection.ConnectionInterface;
import net.ausiasmarch.dao.specificdao_0.UsuarioDao_0;
import net.ausiasmarch.exceptions.CustomException;
import net.ausiasmarch.factory.ConnectionFactory;
import net.ausiasmarch.factory.GsonFactory;
import net.ausiasmarch.helper.EmailHelper;
import net.ausiasmarch.helper.Log4jHelper;
import net.ausiasmarch.service.genericservice.GenericService;
import net.ausiasmarch.service.serviceinterface.ServiceInterface;
import net.ausiasmarch.setting.ConnectionSettings;

/**
 *
 * @author Ruben
 */
public class UsuarioService_0 extends GenericService implements ServiceInterface {

    ResponseBean oResponseBean = null;
    UsuarioBean oUsuarioBeanSession;
    ConnectionInterface oConnectionImplementation = null;
    Connection oConnection = null;
    Gson oGson = GsonFactory.getGson();
    HttpSession oSession = oRequest.getSession();

    public UsuarioService_0(HttpServletRequest oRequest) {
        super(oRequest);
        ob = oRequest.getParameter("ob");
    }

    public String login() throws Exception, CustomException {
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
                        if (oUsuarioBean.getActive()) {
                            oSession.setAttribute("usuario", oUsuarioBean);
                            oResponseBean = new ResponseBean(200, "Welcome to Trolleyes");
                        } else {
                            oResponseBean = new ResponseBean(403, "User not activated");
                        }
                    } else {
                        oResponseBean = new ResponseBean(402, "Authentication failed");
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

        } catch (CustomException ex) {
            String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName() + " ob:" + ob;
            Log4jHelper.errorLog(msg, ex);
            ex.addDescription(msg);
            throw ex;
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

    public String check() throws Exception, CustomException {
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

        } catch (CustomException ex) {
            String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName() + " ob:" + ob;
            Log4jHelper.errorLog(msg, ex);
            ex.addDescription(msg);
            throw ex;
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

    public String signup() throws Exception {
        try {
            oConnectionImplementation = ConnectionFactory.getConnection(ConnectionSettings.connectionPool);
            oConnection = oConnectionImplementation.newConnection();
            UsuarioDao_0 oUsuarioDao = new UsuarioDao_0(oConnection, "usuario", oUsuarioBeanSession);
            UsuarioBean oUsuarioBean = new UsuarioBean();
            oUsuarioBean.setDni(oRequest.getParameter("dni"));
            oUsuarioBean.setNombre(oRequest.getParameter("nombre"));
            oUsuarioBean.setApellido1(oRequest.getParameter("apellido1"));
            oUsuarioBean.setApellido2(oRequest.getParameter("apellido2"));
            oUsuarioBean.setLogin(oRequest.getParameter("username"));
            oUsuarioBean.setPassword(oRequest.getParameter("password"));
            oUsuarioBean.setEmail(oRequest.getParameter("email"));
            oUsuarioBean.setToken(getToken());
            oUsuarioBean.setActive(false);
            String token = oUsuarioBean.getToken();
            String email = oRequest.getParameter("email");
            String username = oRequest.getParameter("username");
            String emailText = "<div style='font-family: sans-serif'><p style='font-size: 32px'>Hola, <u style='color: rgb(16, 108, 200)'>@" + username + "</u></p><br/><p style='font-size: 30px'><b>¡Bienvenido a la tienda online de TrollEyes!</b></p><p style='font-size: 24px'>Para continuar con el registro de su cuenta necesitamos que realice la validación accediendo al siguiente enlace <span style='color: rgb(16, 108, 200)'>http://localhost/trolleyes/validate?token=" + token + "&s43d=" + username + "&hf43=" + oUsuarioBean.getPassword() + "</span></p><br/><p style='font-size: 18px'>Si no has solicitado el registro, puedes ignorar este correo.</p></div>";
            if (oUsuarioDao.register(oUsuarioBean) == 0) {
                oResponseBean = new ResponseBean(500, "KO");
            } else {
                EmailHelper.sendEmail("trolleyesclient@gmail.com", email, "trolleyes1234", "Registro en TrollEyes, se necesita confirmación", emailText);
                oResponseBean = new ResponseBean(200, "Usuario registrado con éxito.");
            }
        } catch (CustomException ex) {
            String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName() + " ob:" + ob;
            Log4jHelper.errorLog(msg, ex);
            ex.addDescription(msg);
            throw ex;
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

    private String getToken() {
        int numAleatorio = (int) Math.floor(Math.random() * (100000 - 999999) + 999999);
        String tokenAleatorio = String.valueOf(numAleatorio) + "TKN";
        return tokenAleatorio;
    }

    public String loginActive() throws Exception {
        ConnectionInterface oConnectionImplementation = null;
        UsuarioBean oUsuarioBean;
        String token = oRequest.getParameter("token");
        try {

            oConnectionImplementation = ConnectionFactory.getConnection(ConnectionSettings.connectionPool);
            oConnection = oConnectionImplementation.newConnection();

            UsuarioDao_0 oUsuarioDao = new UsuarioDao_0(oConnection, "usuario", oUsuarioBeanSession);
            String login = oRequest.getParameter("8j94");
            String password = oRequest.getParameter("9m72");
            oUsuarioBean = oUsuarioDao.get(login, password);

            if (oUsuarioBean == null) {
                oResponseBean = new ResponseBean(401, "Authentication Failed");
            } else {
                if (oUsuarioBean.getToken().equals(token) && oUsuarioDao.activeUser(oUsuarioBean.getLogin()) != 0) {
                    oResponseBean = new ResponseBean(200, "User activated successfully");
                } else {
                    oResponseBean = new ResponseBean(400, "User activation failed");
                }
            }
        } catch (CustomException ex) {
            String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName() + " ob:" + ob;
            Log4jHelper.errorLog(msg, ex);
            ex.addDescription(msg);
            throw ex;
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
