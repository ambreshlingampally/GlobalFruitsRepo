public with sharing class contactAuraService {
    public contactAuraService() {

    }

    @AuraEnabled(cacheable=true)
    public static List<SObject> getContactList(String name){
        try {

        String key='%'+name+'%';
        String query='select id,name,email,phone from contact';
        return DataBase.query(query);
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable=true)
    public static List<SObject> getAccountList(String name){
        try {
            String key='%'+name+'%';
            String query='select id,name,industry from Account where name like :key';
            return DataBase.query(query);

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
