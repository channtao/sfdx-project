public class AccountController1 {
    @AuraEnabled
    public static List<Account> getAccounts() {
        List<Account> accountList = [SELECT Id, Name FROM Account LIMIT 10];
        return accountList;
    }
}