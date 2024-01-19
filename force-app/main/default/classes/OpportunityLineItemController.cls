public with sharing class OpportunityLineItemController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(Id recordId) {
        // ここで関連リストをクエリして取得するロジックを実装
       List<Account> accounts = [SELECT Id, Name, Phone FROM Account];
        return accounts;
    }

    @AuraEnabled
    public static void deleteAccount(Id accountId) {
        // アカウントの削除ロジックを実装
    }

    @AuraEnabled
    public static void updateAccount(Account account) {
        // アカウントの更新ロジックを実装
    }
}