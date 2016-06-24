package DataAccess;

import java.sql.*;

public class StaffDA {
 
    public static String staffLogin(String SM_APPS_USERNAME, String SM_APPS_PASSWORD){
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "select * from STAFF_MAIN where SM_APPS_USERNAME = '" + SM_APPS_USERNAME + "' and SM_APPS_PASSWD = '" + SM_APPS_PASSWORD + "'";
    
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            
            conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.119:1521:orcl", "cmsadmin", "abc12345");
            
            ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next() == false) {
                return "fail";
            }
            else {
                return "success";
            }
        }
        catch (Exception ex) {
            System.err.println(ex);
            return "fail";
        }
    }
}
