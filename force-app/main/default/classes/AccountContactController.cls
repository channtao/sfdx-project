public with sharing class AccountContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(Id accountId) {
      return [SELECT Id, Name, Phone, Email FROM Contact WHERE AccountId = :accountId];
    }
  
    @AuraEnabled
    public static void deleteContact(Id contactId) {
      Contact contactToDelete = [SELECT Id FROM Contact WHERE Id = :contactId];
      if (contactToDelete != null) {
        delete contactToDelete;
      }
    }
  }