package net.ausiasmarch.bean;

import com.google.gson.annotations.Expose;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import net.ausiasmarch.dao.daointerface.DaoInterface;
import net.ausiasmarch.dao.specificdao_1.FacturaDao_1;
import net.ausiasmarch.dao.specificdao_1.TipoUsuarioDao_1;
import net.ausiasmarch.dao.specificdao_2.FacturaDao_2;
import net.ausiasmarch.factory.DaoFactory;

public class UsuarioBean implements BeanInterface {

    @Expose
    private Integer id;
    @Expose
    private String dni;
    @Expose
    private String nombre;
    @Expose
    private String apellido1;
    @Expose
    private String apellido2;
    @Expose
    private String email;
    @Expose
    private String login;
    @Expose
    private String token;
    @Expose
    private Boolean active;
    @Expose(serialize = false)
    private String password;
    @Expose(serialize = false)
    private Integer tipo_usuario_id;
    @Expose(deserialize = false)
    private TipoUsuarioBean tipo_usuario_obj;
    @Expose(deserialize = false)
    private Integer link_factura;

    public Integer getLink_factura() {
        return link_factura;
    }

    public void setLink_factura(Integer link_factura) {
        this.link_factura = link_factura;
    }

    public UsuarioBean() {
    }

    public UsuarioBean(String login, String password) {
        this.login = login;
        this.password = password;
    }

    @Override
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getTipo_usuario_id() {
        return tipo_usuario_id;
    }

    public void setTipo_usuario_id(Integer tipo_usuario_id) {
        this.tipo_usuario_id = tipo_usuario_id;
    }

    public TipoUsuarioBean getTipo_usuario_obj() {
        return tipo_usuario_obj;
    }

    public void setTipo_usuario_obj(TipoUsuarioBean tipo_usuario_obj) {
        this.tipo_usuario_obj = tipo_usuario_obj;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @Override
    public UsuarioBean fill(ResultSet oResultSet, Connection oConnection, int spread, UsuarioBean oUsuarioBeanSession) throws Exception {
        this.setId(oResultSet.getInt("id"));
        this.setDni(oResultSet.getString("dni"));
        this.setNombre(oResultSet.getString("nombre"));
        this.setApellido1(oResultSet.getString("apellido1"));
        this.setApellido2(oResultSet.getString("apellido2"));
        this.setEmail(oResultSet.getString("email"));
        this.setLogin(oResultSet.getString("login"));
        this.setPassword(oResultSet.getString("password"));
        this.setTipo_usuario_id(oResultSet.getInt("tipo_usuario_id"));
        this.setActive(oResultSet.getBoolean("active"));
        this.setToken(oResultSet.getString("token"));

        DaoInterface oFacturaDao = DaoFactory.getDao(oConnection, "factura", oUsuarioBeanSession);
        if (oFacturaDao != null) {
            if (oFacturaDao.getClass() == FacturaDao_1.class) {
                FacturaDao_1 oFacturaDao_1 = (FacturaDao_1) oFacturaDao;
                this.setLink_factura(oFacturaDao_1.getCount(id, "usuario"));
            } else {
                FacturaDao_2 oFacturaDao_2 = (FacturaDao_2) oFacturaDao;
                this.setLink_factura(oFacturaDao_2.getCount(id, "usuario"));
            }
        }

        if (spread > 0) {
            spread--;
            TipoUsuarioDao_1 oTipoUsuarioDao = new TipoUsuarioDao_1(oConnection, "tipo_usuario", oUsuarioBeanSession);
            TipoUsuarioBean oTipoUsuarioBean;
            oTipoUsuarioBean = (TipoUsuarioBean) oTipoUsuarioDao.get(this.tipo_usuario_id);
            this.tipo_usuario_obj = oTipoUsuarioBean;
        }
        return this;
    }

    @Override
    public PreparedStatement orderSQL(List<String> orden, PreparedStatement oPreparedStatement) throws Exception {
        for (int i = 1; i < orden.size(); i++) {
            if (orden.get((i - 1)).equalsIgnoreCase("id")) {
                oPreparedStatement.setInt(i, 1);
            } else if (orden.get((i - 1)).equalsIgnoreCase("dni")) {
                oPreparedStatement.setInt(i, 2);
            } else if (orden.get((i - 1)).equalsIgnoreCase("nombre")) {
                oPreparedStatement.setInt(i, 3);
            } else if (orden.get((i - 1)).equalsIgnoreCase("apellido1")) {
                oPreparedStatement.setInt(i, 4);
            } else if (orden.get((i - 1)).equalsIgnoreCase("apellido2")) {
                oPreparedStatement.setInt(i, 5);
            } else if (orden.get((i - 1)).equalsIgnoreCase("email")) {
                oPreparedStatement.setInt(i, 6);
            } else if (orden.get((i - 1)).equalsIgnoreCase("login")) {
                oPreparedStatement.setInt(i, 7);
            } else if (orden.get((i - 1)).equalsIgnoreCase("tipo_usuario_obj")) {
                oPreparedStatement.setInt(i, 8);
            }
        }
        return oPreparedStatement;
    }

    @Override
    public String getFieldInsert() {
        return " (dni,nombre,apellido1,apellido2,email,login,password,tipo_usuario_id) VALUES(?,?,?,?,?,?,?,?)";
    }

    private String getFieldFilter(String campo) {
        return " OR " + campo + "LIKE CONCAT('%', \'?\', '%') ";
    }

    @Override
    public String getFieldConcat() {

        return getFieldFilter("dni")
                + getFieldFilter("nombre")
                + getFieldFilter("apellido1")
                + getFieldFilter("apellido2")
                + getFieldFilter("email")
                + getFieldFilter("login")
                + getFieldFilter("password")
                + getFieldFilter("tipo_usuario_id");
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
        UsuarioBean oUsuarioBean = (UsuarioBean) oBeanParam;
        oPreparedStatement.setString(1, oUsuarioBean.getDni());
        oPreparedStatement.setString(2, oUsuarioBean.getNombre());
        oPreparedStatement.setString(3, oUsuarioBean.getApellido1());
        oPreparedStatement.setString(4, oUsuarioBean.getApellido2());
        oPreparedStatement.setString(5, oUsuarioBean.getEmail());
        oPreparedStatement.setString(6, oUsuarioBean.getLogin());
        oPreparedStatement.setString(7, oUsuarioBean.getPassword());
        oPreparedStatement.setInt(8, oUsuarioBean.getTipo_usuario_id());
        return oPreparedStatement;
    }

    @Override
    public String getFieldUpdate() {
        return " dni=?,nombre=?,apellido1=?,apellido2=?";
    }

    @Override
    public PreparedStatement setFieldUpdate(BeanInterface oBeanParam, PreparedStatement oPreparedStatement)
            throws SQLException {
        UsuarioBean oUsuarioBean = (UsuarioBean) oBeanParam;
        oPreparedStatement.setString(1, oUsuarioBean.getDni());
        oPreparedStatement.setString(2, oUsuarioBean.getNombre());
        oPreparedStatement.setString(3, oUsuarioBean.getApellido1());
        oPreparedStatement.setString(4, oUsuarioBean.getApellido2());
        oPreparedStatement.setInt(5, oUsuarioBean.getId());
        return oPreparedStatement;
    }

    @Override
    public String getFieldLink() {
        return "link_factura";
    }

    @Override
    public String getFieldId(String filter) {
        return "tipo_usuario_id";
    }

    @Override
    public PreparedStatement setFieldId(int numparam, PreparedStatement oPreparedStatement, int id) throws SQLException {
        oPreparedStatement.setInt(++numparam, id);
        return oPreparedStatement;
    }

    @Override
    public String getFieldOrder(String orden) {
        return orden.matches("id|dni|nombre|apellido1|login|email") ? orden : null;
    }
}
