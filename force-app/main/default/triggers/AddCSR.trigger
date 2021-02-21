trigger AddCSR on Opportunity (before insert) {
    CSR_Settings__c settings = CSR_Settings__c.getInstance('csr');
    String CSR_USER_ID = settings.CSR_User_ID__c;
    Decimal OPP_MIN_VALUE = settings.Opp_Minimum_Value__c;

    List<Account> accounts = new List<Account>();

    for (Opportunity opp: Trigger.new){
        if (opp.Amount >= OPP_MIN_VALUE){
            Account acc = new Account();
            acc.id = opp.AccountId;

            acc.CSR__c = CSR_USER_ID;
            accounts.add(acc);
        }
    }
    update accounts;
}