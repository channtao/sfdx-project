// AccountController.cls
public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getAccountContacts(Id accountId) {
        return [SELECT Id, Name, Phone FROM Contact WHERE AccountId = :accountId];
    }

    // Implement methods to create, edit, and delete contacts as needed.
}