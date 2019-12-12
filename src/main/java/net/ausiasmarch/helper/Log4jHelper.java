package net.ausiasmarch.helper;

import org.apache.log4j.Logger;

public class Log4jHelper {

    public static void infoLog(String strMessage) {
        Logger log = Logger.getLogger("trolleyes");
        log.info(strMessage);
    }

    public static void errorLog(String strMessage) {
        Logger log = Logger.getLogger("trolleyes");
        log.error(strMessage);
    }

    public static void errorLog(String strMessage, Exception ex) {
        Logger log = Logger.getLogger("trolleyes");
        log.error(strMessage, ex);
        TraceHelper.trace(strMessage + " " + ex.getMessage());
    }

    public static void fatalLog(String strMessage) {
        Logger log = Logger.getLogger("trolleyes");
        log.fatal(strMessage);
    }

    public static void debugLog(String strMessage) {
        Logger log = Logger.getLogger("trolleyes");
        log.debug(strMessage);
    }

    public static void warnLog(String strMessage) {
        Logger log = Logger.getLogger("trolleyes");
        log.warn(strMessage);
    }

}
