public with sharing class MyLwcController {

    @AuraEnabled
    public static String getGreeting(String name) {
        return 'Hello, ' + name + '!';
    }
}