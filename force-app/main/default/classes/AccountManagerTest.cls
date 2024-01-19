@isTest
public class AccountManagerTest {
    @isTest
    static void TestgetAccount(){
        id recordId = createTestRecord();
        restRequest request = new restRequest();
        request.requestUri =
            'https://lizhen-dev-ed.my.salesforce.com//services/apexrest/Accounts/'
            + recordId + '/contacts';
        request.httpMethod = 'Get';
        RestContext.request = request;
        system.debug(request.requestURI);
        Account ac = AccountManager.getAccount();
        system.assertEquals('test', ac.Name);
        
    }
    static id createTestRecord(){
        Account ac = new Account(name='test');
        insert ac;
        Contact con = new Contact(firstname='testcon',lastname='lastname',AccountId=ac.Id);
        insert con;
        return ac.id;
    }
}