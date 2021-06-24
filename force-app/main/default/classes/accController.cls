public with sharing class accController {

    @AuraEnabled(cacheable=true)
    public static List<Account> getRecordList(){
        return [select id,name from Account limit 10];
    }
}
