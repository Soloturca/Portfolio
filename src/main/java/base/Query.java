package base;

public class Query {

    public static String selectBillNumberForPAYCAP = "select * FROM bpps.bill where sun IN ('" + AutomationConstants.msisdn + "')";

    public static String deleteForBILL = "delete from malt_gateway_log where invoice_no in ('" + AutomationConstants.billNumber + "')\n" +
            "AND PAYMENT_STATUS = 'SUCCESS'\n" +
            "\n" +
            "delete from masterpass_log where invoice_no in ('" + AutomationConstants.billNumber + "')\n" +
            "AND PAYMENT_STATUS = 'SUCCESS'";

    public static String updateBillStatusForPAYCAP = "update bpps.bill set bill_status = '0', sum_amount = amount, op_count = '0' where sun in ('" + AutomationConstants.msisdn + "')";


   //public static String selectTcknQuery = "select kimlik_pasaport_no as TC_No from CBU_CUSTOMER_CREATION where is_foreign = 'H' " +
   //        "and used = 'N'" +
   //        "and uyruk = 'Türkiye' and rownum=1";
   //
   //public static String updateUsedTcknQuery(String TCKN) {
   //    return "update CBU_CUSTOMER_CREATION set USED = 'Y', upd_Date = sysdate, upd_user = ' polaris updated '" +
   //            "where kimlik_pasaport_no = '" + TCKN + "'";
   //}
   //
   //public static String insertUsedTcknQuery(String createDate, String TCKN) {
   //    return "insert into web_portal_log (islem, user_name, cr_date, data) " +
   //            "values('tckn_bul','polarisAutomationUser','" + createDate + "','" + TCKN + "')";
   //}
   //
   //public static String insertCitizenIntoMernis(String TCKN) {
   //    return "INSERT INTO PROVISIONING_MGNT.MERNIS_CUSTOMER_INFO" +
   //            "(TC_ID,BIRTHPLACE_CODE,NAME,SURNAME,SEX,FATHER_NAME,MOTHER_NAME,DATE_OF_BIRTH_YEAR,DATE_OF_BIRTH_MONTH,DATE_OF_BIRTH_DAY,PLACE_OF_BIRTH,STATUS,MARITAL_STATUS,PROVINCE_CODE,PROVINCE_NAME,COUNTY_CODE,COUNTY_NAME,VOLUME_CODE,VOLUME_NAME,FAMILY_SEQUENCE_NUMBER,PERSON_SEQUENCE_NUMBER,DOCUMENT_NO)" +
   //            "VALUES ('" + TCKN + "','1542', 'YAKAR', 'YAKAR','Male','YAKAR','YAKAR','1993','12','12','ADANA','Open','Single','1','ADANA','1101','ADANA','1','MERKEZ','39','2','" + TCKN + "')";
   //}
}
