package DB;

import base.AutomationConstants;
import base.DataBase;
import com.saf.framework.MyTestNGBaseClass;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExecuteQuery extends DataBase {

    public ExecuteQuery(DBType oDBType) {
        super(oDBType);
    }

    public ResultSet selectBillNumberForPAYCAP() {
        ResultSet rs = null;
        try {
            String query = "select * FROM bpps.bill where sun IN ('" + AutomationConstants.msisdn + "')";
            Statement stmt = DataBaseConn(AutomationConstants.connectionStringForPAYCAP, AutomationConstants.oracleUsernameForPAYCAP, AutomationConstants.oraclePasswordForPAYCAP);
            MyTestNGBaseClass.reportResult("INFO", "Connected to Oracle database!", false);
            MyTestNGBaseClass.allureReport("", "Connected to Oracle database!", false);
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public ResultSet deleteForBILL1() {
        ResultSet rs = null;
        try {
            String query = "DELETE from malt_gateway_log where invoice_no in ('" + AutomationConstants.billNumber + "') AND PAYMENT_STATUS = 'SUCCESS'";
            Statement stmt = DataBaseConn(AutomationConstants.connectionStringForBILL, AutomationConstants.oracleUsernameForBILL, AutomationConstants.oraclePasswordForBILL);
            MyTestNGBaseClass.reportResult("INFO", "Connected to Oracle database!", false);
            MyTestNGBaseClass.allureReport("", "Connected to Oracle database!", false);
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public ResultSet deleteForBILL2() {
        ResultSet rs = null;
        try {
            String query = "DELETE from masterpass_log where invoice_no in ('" + AutomationConstants.billNumber + "') AND PAYMENT_STATUS = 'SUCCESS'";
            Statement stmt = DataBaseConn(AutomationConstants.connectionStringForBILL, AutomationConstants.oracleUsernameForBILL, AutomationConstants.oraclePasswordForBILL);
            MyTestNGBaseClass.reportResult("INFO", "Connected to Oracle database!", false);
            MyTestNGBaseClass.allureReport("", "Connected to Oracle database!", false);
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public ResultSet updateBillStatusForPAYCAP() {
        ResultSet rs = null;
        try {
            String query = "update bpps.bill set bill_status = '0', sum_amount = amount, op_count = '0' where sun in ('" + AutomationConstants.msisdn + "')";
            Statement stmt = DataBaseConn(AutomationConstants.connectionStringForPAYCAP, AutomationConstants.oracleUsernameForPAYCAP, AutomationConstants.oraclePasswordForPAYCAP);
            MyTestNGBaseClass.reportResult("INFO", "Connected to Oracle database!", false);
            MyTestNGBaseClass.allureReport("", "Connected to Oracle database!", false);
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }
}

