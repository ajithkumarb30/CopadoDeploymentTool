public with sharing class AccountController {
    @testVisible private static AccountControllerDAO.IAccountControllerDAO accountDAOInstance = new AccountControllerDAO();
    @AuraEnabled(cacheable=true)
    public static List<Account> getFieldValues(List<String> accountData){
        return accountDAOInstance.getValuesDealer(accountData);
    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getFieldValuesForNonDealer(List<String> accountDataNonDealer){
        return accountDAOInstance.getValuesforNonDealer(accountDataNonDealer);
           }
    @AuraEnabled
    public static List<Account> createAccount(Account acc) {
        return accountDAOInstance.createAccountRecord(acc);
    }
}