public class LeadProcessor implements DataBase.Batchable<SObject> {
    
    public DataBase.QueryLocator start(DataBase.BatchableContext bc){
        return DataBase.getQueryLocator('select id,name from Lead');
    }
    
    public void execute(DataBase.BatchableContext bc, List<Lead> records){
        list<Lead> myLead = new list<lead>();
        for(Lead record : records){
            record.LeadSource = 'Dreamforce';
            myLead.add(record);
                
                }
        update myLead;
    }
    
    public void finish(DataBase.BatchableContext bc){
        
    }
}