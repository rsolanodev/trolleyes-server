package net.ausiasmarch.helper;

import net.ausiasmarch.setting.ConfigurationSettings;


public class TraceHelper {

    public static void trace(String s) {
        if (ConfigurationSettings.environment == ConfigurationSettings.EnvironmentConstans.Debug) {
            System.out.println(s);
        }
    }
}
