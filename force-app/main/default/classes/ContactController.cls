public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList(Id accountId) {
        return [SELECT Id, Name, Phone FROM Contact WHERE AccountId = :accountId];
    }

    @AuraEnabled(cacheable=true)
    public static void deleteContact(Id contactId) {
        Contact contactToDelete = [SELECT Id FROM Contact WHERE Id = :contactId LIMIT 1];
        if (contactToDelete != null) {
            delete contactToDelete;
        }
    }
}