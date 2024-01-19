public class ContactSearch {
    public static List<Contact> searchForContacts(String Lname,String Pcode){
        List<Contact> cons =  [select ID,NAME FROM Contact WHERE LastName=:Lname and MailingPostalCode =:Pcode];
        return cons;
    }
}