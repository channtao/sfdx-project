public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String m){
        List<List< SObject>> searchList = [FIND 'Smith or m' IN ALL FIELDS RETURNING
                                          Contact(FirstName,LastName),Lead(FirstName,LastName)];
        return searchList;
    }
}