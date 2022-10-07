package base;

import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.MongoException;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoDatabase;
import com.saf.framework.CommonLib;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;

public class DataBase
{
    public enum DBType {
        ORACLE, MYSQL, POSTGRESQL
    }

    DBType oDBType;
    static Connection con = null;

    public DataBase(DBType oDBType) {
        this.oDBType = oDBType;
    }

    public Statement DataBaseConn(String connectionString, String oracleUsername, String oraclePassword) {
        switch (oDBType) {
            case ORACLE:
                try {

                    //Load the driver class
                    String DBClass = "oracle.jdbc.driver.OracleDriver";
                    Class.forName(DBClass).newInstance();

                    //Create the connection object
                    con = DriverManager.getConnection(connectionString, oracleUsername, oraclePassword);

                    //Create the statement object
                    return con.createStatement();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;

            case MYSQL:
                try {

                    //Load the driver class
                    String DBClass = "com.mysql.jdbc.Driver";
                    Class.forName(DBClass).newInstance();

                    //Create the connection object
                    con = DriverManager.getConnection(connectionString, oracleUsername, oraclePassword);

                    //Create the statement object
                    return con.createStatement();

                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;

            case POSTGRESQL:
                try {
                    //Create the connection object
                    con = DriverManager.getConnection(connectionString, oracleUsername, oraclePassword);
                    //Create the statement object
                    return con.createStatement();
                } catch (Exception e) {
                    System.out.println("Connection failure.");
                    e.printStackTrace();
                }
                break;
        }
        return null;
    }

    public void closedDbConnection() {
        try {
            con.close();
            CommonLib.allureReport(StepResultType.valueOf(""), "Connection closed successfully!",false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static MongoDatabase connectionMongoDB(Integer desiredPort, String desiredDatabase) {
        try {
            MongoCredential credential = MongoCredential.createCredential(AutomationConstants.MongoDBUsername, AutomationConstants.MongoGeneralDatabase, AutomationConstants.MongoDBPassword.toCharArray());
            MongoClient mongoClient = new MongoClient(new ServerAddress(AutomationConstants.MongoDBHost, desiredPort), Collections.singletonList(credential));
            return mongoClient.getDatabase(desiredDatabase);
        } catch (MongoException e) {
            System.out.println("Connection failure.");
            e.printStackTrace();
        }
        return null;
    }
}