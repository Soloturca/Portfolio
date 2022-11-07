package base;

public class AutomationConstants {
    // vfdwh constants
    public static String connectionStringForVFDWH = "jdbc:postgresql://10.190.230.81:5432/vfdwh";
    public static String oracleUsernameForVFDWH = "vfdwh";
    public static String oraclePasswordForVFDWH = "eNpmbQ4z";

    // TIBCO&Mernis constants
    public static String connectionStringForMernis = "jdbc:oracle:thin:@izmcon5dt-scan:1521/SRV_TBCEBTRL";
    public static String oracleUsernameForMernis = "TESTUSER";
    public static String oraclePasswordForMernis = "TESTUSER";

    //Mongo
    public static String MongoDBHost = "";
    public static String MongoDBUsername = "";
    public static String MongoDBPassword = "";
    public static String MongoGeneralDatabase = "";

    public static String apiURL = "https://rickandmortyapi.com/api/";
    public static String responseData = "";
    public static String keySOAPAction = "SOAPAction";

    public static String TCKN = "";
    public static String billingAccountId = "";

    public static String imsi = "";
    public static String createDate = "";
    public static String cust_extID = "";
    public static String URLCreateCustomer = "http://customer-management-billing-provision-adsat.apps.mbt.vodafone.local/customerManagement/customer";

    //Browser Constants
    public static long lngPageLoadTimeout = 90L;
    public static long lngImplicitWaitTimeout = 60L;
    public static String sGeckoDriverPath   	= "/Exes/geckodriver.exe";
    public static String sIEDriverPath      	= "/Exes/IEDriverServer.exe";
}