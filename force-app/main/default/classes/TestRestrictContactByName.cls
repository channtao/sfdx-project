@isTest
public class TestRestrictContactByName {
	@isTest
    static void CheckRestrictContactByName(){
        List<Contact> cons = new List<Contact>{new Contact(lastName='INVALIDNAME'),new Contact(lastName='VALIDNAME')};
        insert cons;
    }
}