package Controller;

import DataAccess.StaffDA;
import java.sql.SQLException;

public class Staff {
    private String SM_STAFF_ID;
    private String SM_STAFF_NAME;
    private String SM_STAFF_STATUS;
    private String SM_APPS_USERNAME;
    private String SM_APPS_PASSWD;

    public String getSM_APPS_USERNAME() {
        return SM_APPS_USERNAME;
    }

    public void setSM_APPS_USERNAME(String SM_APPS_USERNAME) {
        this.SM_APPS_USERNAME = SM_APPS_USERNAME;
    }

    public String getSM_APPS_PASSWD() {
        return SM_APPS_PASSWD;
    }

    public void setSM_APPS_PASSWD(String SM_APPS_PASSWD) {
        this.SM_APPS_PASSWD = SM_APPS_PASSWD;
    }

    public String getSM_STAFF_ID() {
        return SM_STAFF_ID;
    }

    public void setSM_STAFF_ID(String SM_STAFF_ID) {
        this.SM_STAFF_ID = SM_STAFF_ID;
    }
    
    public String getSM_STAFF_NAME() {
        return SM_STAFF_NAME;
    }

    public void setSM_STAFF_NAME(String SM_STAFF_NAME) {
        this.SM_STAFF_NAME = SM_STAFF_NAME;
    }

    public String getSM_STAFF_STATUS() {
        return SM_STAFF_STATUS;
    }

    public void setSM_STAFF_STATUS(String SM_STAFF_STATUS) {
        this.SM_STAFF_STATUS = SM_STAFF_STATUS;
    }
    
    public static String staffLogin(String SM_APPS_USERNAME, String SM_APPS_PASSWD) throws SQLException {
        String sl = StaffDA.staffLogin(SM_APPS_USERNAME, SM_APPS_PASSWD);
        return sl;
    }
}
