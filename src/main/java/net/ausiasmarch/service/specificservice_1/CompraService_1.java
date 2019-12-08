package net.ausiasmarch.service.specificservice_1;

import com.google.gson.Gson;
import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import net.ausiasmarch.bean.CompraBean;
import net.ausiasmarch.bean.ResponseBean;
import net.ausiasmarch.connection.ConnectionInterface;
import net.ausiasmarch.dao.specificdao_1.CompraDao_1;
import net.ausiasmarch.factory.ConnectionFactory;
import net.ausiasmarch.factory.GsonFactory;
import net.ausiasmarch.service.genericservice.GenericService;
import net.ausiasmarch.service.serviceinterface.ServiceInterface;
import net.ausiasmarch.setting.ConnectionSettings;

public class CompraService_1 extends GenericService implements ServiceInterface {

    String[] frasesInicio = {"El fin de la estructura ", "La agrupacion logica ", "El objetivo conjunto ",
        "Una dinámica apropiada "};
     
    public CompraService_1(HttpServletRequest oRequest) {
        super(oRequest);
        ob = oRequest.getParameter("ob");
    }

    public String fill() throws Exception {
         ConnectionInterface oConnectionImplementation = null;
         Connection oConnection = null;
         ResponseBean oResponseBean = null;
         Gson oGson = GsonFactory.getGson();
          try {
        oConnectionImplementation = ConnectionFactory
                .getConnection(ConnectionSettings.connectionPool);
        oConnection = oConnectionImplementation.newConnection();  
        CompraDao_1 oCompraDao = new CompraDao_1(oConnection,ob,oUsuarioBeanSession);
       
        int numCompra = Integer.parseInt(oRequest.getParameter("number"));
        for (int i = 0; i < numCompra; i++) {
            CompraBean oCompraBean = new CompraBean();
//          Date randomDate = new Date(ThreadLocalRandom.current().nextLong(date1.getTime(), date2.getTime()));
            int numAleatorio = (int) Math.floor(Math.random() * (1 - 50) + 50);
            int alProducto_id = (int) Math.floor(Math.random() * 25) + 1;
            int alFactura_id = (int) Math.floor(Math.random() * 25) + 1;
            oCompraBean.setCantidad(numAleatorio);
            oCompraBean.setProducto_id(alProducto_id);
            oCompraBean.setFactura_id(alFactura_id);
            oCompraDao.insert(oCompraBean);
        }
        oResponseBean = new ResponseBean(200, "Insertados los registros con exito");
          } catch (Exception ex) {
                String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName();
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

    private String generaTexto(int longitud) {
        String fraseRandom = "";
        for (int i = 0; i < longitud; i++) {
            fraseRandom += frasesInicio[(int) (Math.random() * frasesInicio.length) + 0];
//			fraseRandom += frasesMitad[(int) (Math.random() * frasesMitad.length) + 0];
//			fraseRandom += frasesFinal[(int) (Math.random() * frasesFinal.length) + 0];
        }
        return fraseRandom;
    }
}
