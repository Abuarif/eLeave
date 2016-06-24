package Configure;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static String host = "192.168.0.119";
    private static int netTime = 2000;
    private static String user = "cmsadmin";
    private static String pass = "abc12345";
    private static String database = "cmsadmin";
    private static String dbUrl = "jdbc:oracle:thin:@" + getHost() + ":1521/" + getDatabase();
    private static int port_rmi = 1099;
    
    public static String getHost() {
        return host;
    }

    public static int getNetTime() {
        return netTime;
    }

    public static String getUser() {
        return user;
    }

    public static String getDatabase() {
        return database;
    }

    public static int getPort_rmi() {
        return port_rmi;
    }

    public static void setHost(String aHost) {
        host = aHost;
    }

    public static void setPort_rmi(int aPort_rmi) {
        port_rmi = aPort_rmi;
    }
    
    public static Connection getConn() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            return DriverManager.getConnection(dbUrl, getUser(), pass);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
