package DB;

import base.AutomationConstants;
import base.DataBase;
import base.Query;
import com.saf.framework.CommonLib;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBFunction {

    public static void getMsisdnInfo() {
        String Msisdn = "";
        try {
            ExecuteQuery executeQuery = new ExecuteQuery(DataBase.DBType.ORACLE);
            ResultSet rs = executeQuery.getReadInfoFromDB(AutomationConstants.connectionStringForOSS,AutomationConstants.oracleUsernameForVFDWH,AutomationConstants.oraclePasswordForVFDWH, Query.selectMsisdnQueryforTC003);
            while (rs.next()) {
                Msisdn = rs.getString("MSISDN"); //check pls
                AutomationConstants.Msisdnfortc001 = Msisdn;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void insertCitizenIntoMernis() {
        ExecuteQuery executeQuery = new ExecuteQuery(DataBase.DBType.ORACLE);
        executeQuery.getWriteInfoFromDB(AutomationConstants.connectionStringForMernis, AutomationConstants.oracleUsernameForMernis, AutomationConstants.oraclePasswordForMernis, Query.insertCitizenIntoMernis(AutomationConstants.TCKN));
        CommonLib.waitSeconds(3);
    }
}
