@isTest
public class LeadProcessorTest {
    @testSetup
    static void setup(){
        List<Lead> leadnew = new list<Lead>();
        
        for(integer i=0;i<200;i++){
            leadnew.add(new Lead(firstname = 'lead'+i,lastName = 'lastName',company = 'com')); 
        }
        insert leadnew;
    }
    @isTest
    static void test(){
        
        system.Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        DataBase.executeBatch(lp);
        system.Test.stopTest();
        
        List<Lead> leads = [select leadSource from lead where leadSource = 'Dreamforce'];
        system.assertEquals(200, leads.size());
        
    }
    
}