package base;

public class Query {

    public static String selectMsisdnQueryforTC003 = "select * from ccb.ccb_subscriber\n" +
            "where customer_id in (\n" +
            "select customer_id from ccb.ccb_customer\n" +
            "where TYPE = 'S' -- F = kurumsal & S = Bireysel\n" +
            "--and birthday < '01-JAN-1994' -- 25 yaş altı\n" +
            "#NAME?\n" +
            "--and gsm_no= '5463026936' \n" +
            ")\n" +
            "and cancel_date is null\n" +
            "and start_date > sysdate - 30 -- son 1 ayda oluşturulan\n" +
            "order by start_date desc\n";
    public static String selectTcknQuery = "select kimlik_pasaport_no as TC_No from CBU_CUSTOMER_CREATION where is_foreign = 'H' " +
            "and used = 'N'" +
            "and uyruk = 'Türkiye' and rownum=1";

    public static String updateUsedTcknQuery(String TCKN) {
        return "update CBU_CUSTOMER_CREATION set USED = 'Y', upd_Date = sysdate, upd_user = ' polaris updated '" +
                "where kimlik_pasaport_no = '" + TCKN + "'";
    }

    public static String insertUsedTcknQuery(String createDate, String TCKN) {
        return "insert into web_portal_log (islem, user_name, cr_date, data) " +
                "values('tckn_bul','polarisAutomationUser','" + createDate + "','" + TCKN + "')";
    }

    public static String insertCitizenIntoMernis(String TCKN) {
        return "INSERT INTO PROVISIONING_MGNT.MERNIS_CUSTOMER_INFO" +
                "(TC_ID,BIRTHPLACE_CODE,NAME,SURNAME,SEX,FATHER_NAME,MOTHER_NAME,DATE_OF_BIRTH_YEAR,DATE_OF_BIRTH_MONTH,DATE_OF_BIRTH_DAY,PLACE_OF_BIRTH,STATUS,MARITAL_STATUS,PROVINCE_CODE,PROVINCE_NAME,COUNTY_CODE,COUNTY_NAME,VOLUME_CODE,VOLUME_NAME,FAMILY_SEQUENCE_NUMBER,PERSON_SEQUENCE_NUMBER,DOCUMENT_NO)" +
                "VALUES ('" + TCKN + "','1542', 'YAKAR', 'YAKAR','Male','YAKAR','YAKAR','1993','12','12','ADANA','Open','Single','1','ADANA','1101','ADANA','1','MERKEZ','39','2','" + TCKN + "')";
    }
}
