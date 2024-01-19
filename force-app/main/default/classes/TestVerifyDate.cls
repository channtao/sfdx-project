@isTest
public class TestVerifyDate {
    @isTest
    static void TestCheckDates1(){
        Date date1 = Date.newInstance(2019, 4, 1);
        Date date2 = Date.newInstance(2019, 3, 3);
        VerifyDate.CheckDates(date1, date2);
    }
    @isTest
    static void TestCheckDates2(){
        Date date1 = Date.newInstance(2019, 3, 1);
        Date date2 = Date.newInstance(2019, 3, 3);
        VerifyDate.CheckDates(date1, date2);
    }
    @isTest
    static void TestCheckDates3(){
        Date date1 = Date.newInstance(2019, 3, 1);
        Date date2 = Date.newInstance(2019, 4, 3);
        VerifyDate.CheckDates(date1, date2);
    }
    
}