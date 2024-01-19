@IsTest(SeeAllData=true)
private class AccountProcessorTest {
	@IsTest
    private static void setNum(){
        List<ID> accountIDs = new List<ID>{'0014x00000612ogAAA','0014x00000612okAAA'};
		system.Test.startTest();
        AccountProcessor.countContacts(accountIDs);
        system.Test.stopTest();

    }
}