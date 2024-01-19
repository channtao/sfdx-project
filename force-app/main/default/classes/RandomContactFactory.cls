public class RandomContactFactory {
    public Static List<Contact> generateRandomContacts(Integer numCons,String strCons){
        List<Contact> cons = new List<Contact>();
        for(Integer i=0;i<numCons;i++){
            Contact con = new Contact(FirstName=strCons + i);
            cons.add(con);
        }
        return cons;
    }
}