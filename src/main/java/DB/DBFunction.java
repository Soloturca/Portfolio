package DB;

import base.AutomationConstants;
import base.DataBase;
import base.Query;
import com.saf.framework.CommonLib;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBFunction {

    public static void getTcknInfo() {
        String TCKN = "";
        try {
            ExecuteQuery executeQuery = new ExecuteQuery(DataBase.DBType.ORACLE);
            ResultSet rs = executeQuery.getReadInfoFromDB(AutomationConstants.connectionStringForVFDWH,AutomationConstants.oracleUsernameForVFDWH,AutomationConstants.oraclePasswordForVFDWH, Query.selectTcknQuery);
            while (rs.next()) {
                TCKN = rs.getString("TC_NO");
                AutomationConstants.TCKN = TCKN;
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
