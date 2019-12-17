package net.ausiasmarch.bean;

import com.google.gson.annotations.Expose;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import net.ausiasmarch.dao.specificdao_1.CompraDao_1;
import net.ausiasmarch.dao.specificdao_1.UsuarioDao_1;

public class FacturaBean implements BeanInterface {

    @Expose
    private Integer id;
    @Expose
    private Date fecha;
    @Expose
    private Integer iva;
    @Expose(serialize = false)
    private Integer usuario_id;
    @Expose(deserialize = false)
    private UsuarioBean usuario_obj;
    @Expose(deserialize = false)
    private Integer link_compra;
    @Expose
    private Boolean can_delete;

    public Boolean getCanDelete() {
        return can_delete;
    }

    public void setCanDelete(Boolean canDelete) {
        this.can_delete = canDelete;
    }

    public Integer getLink_compra() {
        return link_compra;
    }

    public void setLink_compra(Integer link_compra) {
        this.link_compra = link_compra;
    }

    @Override
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Integer getIva() {
        return iva;
    }

    public void setIva(Integer iva) {
        this.iva = iva;
    }

    public Integer getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(Integer usuario_id) {
        this.usuario_id = usuario_id;
    }

    public UsuarioBean getUsuario_obj() {
        return usuario_obj;
    }

    public void setUsuario_obj(UsuarioBean usuario_obj) {
        this.usuario_obj = usuario_obj;
    }

    @Override
    public FacturaBean fill(ResultSet oResultSet, Connection oConnection, int spread, UsuarioBean oUsuarioBeanSession) throws Exception {
        this.setId(oResultSet.getInt("id"));
        this.setFecha(oResultSet.getDate("fecha"));
        this.setIva(oResultSet.getInt("iva"));
        this.setUsuario_id(oResultSet.getInt("usuario_id"));

        CompraDao_1 oCompraDao = new CompraDao_1(oConnection, "compra", oUsuarioBeanSession);
        this.setLink_compra(oCompraDao.getCount(id, "factura"));
        
        if(this.getLink_compra() > 0) {
            this.setCanDelete(false);
        } else {
            this.setCanDelete(true);
        }

        if (spread > 0) {
            spread--;
            UsuarioDao_1 oUsuarioDao = new UsuarioDao_1(oConnection, "usuario", oUsuarioBeanSession);
            UsuarioBean oUsuarioBean = new UsuarioBean();
            oUsuarioBean = (UsuarioBean) oUsuarioDao.get(this.usuario_id);

            this.usuario_obj = oUsuarioBean;
        }
        return this;
    }

    @Override
    public PreparedStatement orderSQL(List<String> orden, PreparedStatement oPreparedStatement) throws Exception {
        for (int i = 1; i < orden.size(); i++) {
            if (orden.get((i - 1)).equalsIgnoreCase("id")) {
                oPreparedStatement.setInt(i, 1);
            } else if (orden.get((i - 1)).equalsIgnoreCase("fecha")) {
                oPreparedStatement.setInt(i, 2);
            } else if (orden.get((i - 1)).equalsIgnoreCase("iva")) {
                oPreparedStatement.setInt(i, 3);
            } else if (orden.get((i - 1)).equalsIgnoreCase("objeto_obj")) {
                oPreparedStatement.setInt(i, 4);
            }
        }
        return oPreparedStatement;
    }

    @Override
    public String getFieldInsert() {
        return " (fecha,iva,usuario_id) VALUES(?,?,?)";
    }

    private String getFieldFilter(String campo) {
        return " OR " + campo + "LIKE CONCAT('%', \'?\', '%') ";
    }

    @Override
    public String getFieldConcat() {

        return getFieldFilter("fecha")
                + getFieldFilter("iva")
                + getFieldFilter("usuario_id");
    }

    @Override
    public PreparedStatement setFilter(int numparam, PreparedStatement oPreparedStatement, String word) throws SQLException {
        for (int i = 0; i <= numparam; i++) {
            oPreparedStatement.setString(++numparam, word);
        }
        return oPreparedStatement;
    }

    @Override
    public PreparedStatement setFieldInsert(BeanInterface oBeanParam, PreparedStatement oPreparedStatement)
            throws SQLException {
        FacturaBean oFacturaBean = (FacturaBean) oBeanParam;
        oPreparedStatement.setDate(1, new java.sql.Date(oFacturaBean.getFecha().getTime()));
        oPreparedStatement.setInt(2, oFacturaBean.getIva());
        oPreparedStatement.setInt(3, oFacturaBean.getUsuario_id());
        return oPreparedStatement;
    }

    @Override
    public String getFieldUpdate() {
        return " fecha=?,iva=?,usuario_id=? ";
    }

    @Override
    public PreparedStatement setFieldUpdate(BeanInterface oBeanParam, PreparedStatement oPreparedStatement)
            throws SQLException {
        FacturaBean oFacturaBean = (FacturaBean) oBeanParam;
        oPreparedStatement.setDate(1, new java.sql.Date(oFacturaBean.getFecha().getTime()));
        oPreparedStatement.setInt(2, oFacturaBean.getIva());
        oPreparedStatement.setInt(3, oFacturaBean.getUsuario_id());
        oPreparedStatement.setInt(4, oFacturaBean.getId());
        return oPreparedStatement;
    }

    @Override
    public String getFieldLink() {
        return "link_compra";
    }

    @Override
    public String getFieldId(String filter) {
        return "usuario_id";
    }

    @Override
    public PreparedStatement setFieldId(int numparam, PreparedStatement oPreparedStatement, int id) throws SQLException {
        // oPreparedStatement.setString(++numparam, filter);
        // oPreparedStatement.setString(++numparam, filter);
        oPreparedStatement.setInt(++numparam, id);
        return oPreparedStatement;
    }

    @Override
    public String getFieldOrder(String orden) {
        return orden.matches("id|fecha|iva|usuario_id") ? orden : null;
    }
}
