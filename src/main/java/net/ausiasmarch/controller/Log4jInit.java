package net.ausiasmarch.controller;

import javax.servlet.http.HttpServlet;
import net.ausiasmarch.helper.TraceHelper;
import org.apache.log4j.PropertyConfigurator;

public class Log4jInit extends HttpServlet {

    @Override
    public void init() {

        String prefix = getServletContext().getRealPath("/");
        String file = getInitParameter("log4j-trolleyes");
        String OS = System.getProperty("os.name").toLowerCase();

        if (file != null) {
            PropertyConfigurator.configure(OS.contains("win") ? prefix + "\\" + file : prefix + file);
            TraceHelper.trace("Log4J Logging started: " + prefix + file);
        } else {
            TraceHelper.trace("Log4J Is not configured for your Application: " + prefix + file);
        }
    }

}
