package DB;

import base.DataBase;
import com.saf.framework.MyTestNGBaseClass;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExecuteQuery extends DataBase {

    public ExecuteQuery(DBType oDBType) {
        super(oDBType);
    }

    public ResultSet getReadInfoFromDB(String connectionString, String oracleUsername, String oraclePassword, String relatedQuery) {
        ResultSet rs = null;
        try {
            Statement stmt = DataBaseConn(connectionString, oracleUsername, oraclePassword);
            MyTestNGBaseClass.allureReport("", "Connected to Oracle database!", false);
            rs = stmt.executeQuery(relatedQuery);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public void getWriteInfoFromDB(String connectionString, String oracleUsername, String oraclePassword, String relatedQuery) {
        try {
            Statement stmt = DataBaseConn(connectionString, oracleUsername, oraclePassword);
            MyTestNGBaseClass.allureReport("", "Connected to Oracle database!", false);
            stmt.executeQuery(relatedQuery);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

