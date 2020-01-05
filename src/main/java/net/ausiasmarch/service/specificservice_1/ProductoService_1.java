package net.ausiasmarch.service.specificservice_1;

import com.google.gson.Gson;
import java.io.File;
import java.sql.Connection;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import net.ausiasmarch.bean.ProductoBean;
import net.ausiasmarch.bean.ResponseBean;
import net.ausiasmarch.connection.ConnectionInterface;
import net.ausiasmarch.dao.specificdao_1.ProductoDao_1;
import net.ausiasmarch.exceptions.CustomException;
import net.ausiasmarch.factory.ConnectionFactory;
import net.ausiasmarch.factory.GsonFactory;
import net.ausiasmarch.helper.Log4jHelper;
import net.ausiasmarch.service.genericservice.GenericService;
import net.ausiasmarch.service.serviceinterface.ServiceInterface;
import net.ausiasmarch.setting.ConnectionSettings;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class ProductoService_1 extends GenericService implements ServiceInterface {

    String[] frasesInicio = {"Maquina de ", "Interruptor para ", "Libro de ", "Bebida de ", "Aparato para ", "Cámara para ", "Móvil de "};
    String[] frasesFinal = {"emparejar. ", "montar tubos. ", "manzana. ", "dientes. ", "atascar.", "ciencia.", "reciclaje."};
    String[] imagesRandom = {"31cOADT0vlL._AC_UL200_SR200,200_.jpg", "51kIRBGmYpL._AC_UL200_SR200,200_.jpg", "51zEzMWs2ML._AC_UL200_SR200,200_.jpg", "61aPU9DBjJL._AC_UL200_SR200,200_.jpg", "61BdJrjHYUL._AC_UL200_SR200,200_.jpg", "61fzPgcBEJL._AC_UL200_SR200,200_.jpg", "61GEYy8+oZL._AC_UL200_SR200,200_.jpg", "61TfDYcozuL._AC_UL200_SR200,200_.jpg", "61u48FEs0rL._AC_UL200_SR200,200_.jpg", "61w7p56ZZwL._AC_UL200_SR200,200_.jpg", "71bcYhnBDDL._AC_UL200_SR200,200_.jpg", "71JItuXbFxL._AC_UL200_SR200,200_.jpg", "71Sowz0FgwL._AC_UL200_SR200,200_.jpg", "71Ytf3okj+L._AC_UL200_SR200,200_.jpg", "81SQ2uQm8lL._AC_UL200_SR200,200_.jpg", "91fXXkecNIL._AC_UL200_SR200,200_.jpg"};

    public ProductoService_1(HttpServletRequest oRequest) {
        super(oRequest);
        ob = oRequest.getParameter("ob");
    }

    public String fill() throws Exception, CustomException {
        ConnectionInterface oConnectionImplementation = null;
        Connection oConnection = null;
        ResponseBean oResponseBean = null;
        Gson oGson = GsonFactory.getGson();
        try {
            oConnectionImplementation = ConnectionFactory
                    .getConnection(ConnectionSettings.connectionPool);
            oConnection = oConnectionImplementation.newConnection();
            ProductoDao_1 oProductoDao = new ProductoDao_1(oConnection, ob, oUsuarioBeanSession);
            int numProd = Integer.parseInt(oRequest.getParameter("number"));
            for (int i = 0; i < numProd; i++) {
                ProductoBean oProductoBean = new ProductoBean();
                int numAleatorio = (int) Math.floor(Math.random() * (100000 - 999999) + 999999);
                int numAleatorio1 = (int) Math.floor(Math.random() * (0 - 999) + 999);
                double numAleatorio2 = (double) Math.random() * (0 - 999) + 999;
                DecimalFormat format2 = new DecimalFormat("#,00");
                double precioAleatorio = Double.parseDouble(format2.format(numAleatorio2));
                int alTipoProducto_id = (int) Math.floor(Math.random() * 12) + 1;
                oProductoBean.setCodigo(numAleatorio + "");
                oProductoBean.setExistencias(numAleatorio1);
                oProductoBean.setPrecio(precioAleatorio);
                oProductoBean.setImagen(generaImages(1));
                oProductoBean.setDescripcion(generaTexto(1));
                oProductoBean.setCanDelete(true);
                oProductoBean.setTipo_producto_id(alTipoProducto_id);
                oProductoDao.insert(oProductoBean);
            }
            oResponseBean = new ResponseBean(200, "Insertados los registros con exito");
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

    private String generaTexto(int longitud) {
        String fraseRandom = "";
        for (int i = 0; i < longitud; i++) {
            fraseRandom += frasesInicio[(int) (Math.random() * frasesInicio.length) + 0];
            fraseRandom += frasesFinal[(int) (Math.random() * frasesFinal.length) + 0];
        }
        return fraseRandom;
    }

    private String generaImages(int longitud) {
        String imageRandom = "";
        for (int i = 0; i < longitud; i++) {
            imageRandom += imagesRandom[(int) (Math.random() * imagesRandom.length) + 0];
        }
        return imageRandom;
    }

    public String addImage() throws Exception, CustomException {
        ResponseBean oResponseBean = null;
        String name = "";
        HashMap<String, String> hash = new HashMap<>();
        if (ServletFileUpload.isMultipartContent(oRequest)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(oRequest);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        name = new File(item.getName()).getName();
                        item.write(new File(".//..//webapps//images//" + name));
                    } else {
                        hash.put(item.getFieldName(), item.getString());
                    }
                }
                oResponseBean = new ResponseBean(200, "La imagen se ha añadido correctamente.");
            } catch (CustomException ex) {
                String msg = this.getClass().getName() + ":" + (ex.getStackTrace()[0]).getMethodName() + " ob:" + ob;
                Log4jHelper.errorLog(msg, ex);
                ex.addDescription(msg);
                throw ex;
            }
        }
        Gson oGson = new Gson();
        return oGson.toJson(oResponseBean);
    }
}
