public class AccountProcessor {
	@future(callout=true)
    public static void countContacts(List<ID> accountIds){
        for(ID accountId : accountIds){
            Account ac = [select name,Number_of_Contacts__c  from Account where Id =:accountId];
            ac.Number_of_Contacts__c = accountIds.size();
            update ac;

        }
    }
}