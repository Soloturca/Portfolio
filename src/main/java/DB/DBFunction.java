package DB;

import base.AutomationConstants;
import base.DataBase;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DBFunction {

    public static String getBillNumberInfo() {
        String billNumber = "";
        try {
            ExecuteQuery executeQuery = new ExecuteQuery(DataBase.DBType.ORACLE);
            ResultSet rs = executeQuery.selectBillNumberForPAYCAP();
            while (rs.next()) {
                billNumber = rs.getString("BILL_NUMBER");
                AutomationConstants.billNumber = billNumber;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return billNumber;
    }

    public static void deleteForBill() {
        ExecuteQuery executeQuery = new ExecuteQuery(DataBase.DBType.ORACLE);
        executeQuery.deleteForBILL1();
        executeQuery.deleteForBILL2();
    }

    public static void updateBillStatus() {
        ExecuteQuery executeQuery = new ExecuteQuery(DataBase.DBType.ORACLE);
        executeQuery.updateBillStatusForPAYCAP();
    }

    public static String checkBillStatus() {
        String billStatus = "";
        try {
            ExecuteQuery executeQuery = new ExecuteQuery(DataBase.DBType.ORACLE);
            ResultSet rs = executeQuery.selectBillNumberForPAYCAP();
            while (rs.next()) {
                billStatus = rs.getString("BILL_STATUS");
                AutomationConstants.billStatus = billStatus;
                System.out.println("Bill Status is: " + AutomationConstants.billStatus);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return billStatus;
    }
}
