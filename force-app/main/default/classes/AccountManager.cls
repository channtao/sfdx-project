@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        system.debug('000');
        system.debug(request);
        system.debug('111');
        system.debug(request.requestURI.substringBetween('Accounts/','/contacts'));
        system.debug('222');
        String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
        system.debug(accountId);
        Account result =[select Id,name,(select id,name from Contacts) from Account where ID =:accountId limit 1];
        system.debug(result);
        return result;
    }
    
    
}