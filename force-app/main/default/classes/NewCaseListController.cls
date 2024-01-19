public class NewCaseListController {
    private String statusDivision = 'new';
    public List<Case> getNewCases(){
        List<Case> result = DataBase.query(
            'SELECT Id ,CaseNumber, status '+
            'FROM Case ' +
            'WHERE status=:statusDivision'
        );
        return result;
    }
}