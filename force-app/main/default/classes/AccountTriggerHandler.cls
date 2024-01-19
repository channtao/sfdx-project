public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accts){
        for(Account acc : accts){
            if(acc.ShippingState!= acc.BillingState){
                acc.ShippingState = acc.BillingState; 
            }
        }
    }
}