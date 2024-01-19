public class ContactList {
    @AuraEnabled
    public static List<Contact> getContact(Id recordId){      
         return [select Id, Name,Phone, Email,Birthdate, Title, Department from Contact Where AccountId =: recordId];      
    }
}