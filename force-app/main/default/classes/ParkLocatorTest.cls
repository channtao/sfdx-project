@isTest
public class ParkLocatorTest {
    @isTest
    static void calloutTest(){
        system.Test.setMock(system.webServiceMock.class, new ParkServiceMock());
        String[] test = ParkLocator.country('japan');
        system.debug(test);
    }

}