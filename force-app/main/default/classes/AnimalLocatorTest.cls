@isTest
private class AnimalLocatorTest {
    @isTest
    static void testAnimalLocator(){
		system.Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String result = AnimalLocator.getAnimalNameById(3);
        
        system.assertEquals('cow', result);
    }
}