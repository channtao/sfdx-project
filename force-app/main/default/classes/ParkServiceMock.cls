@isTest
public class ParkServiceMock implements WebServiceMock {
    public static void doInvoke(Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType){
        ParkService.byCountryResponse response_x  = new ParkService.byCountryResponse();
        response_x .return_x  = new String[]{'test1','test2'};
        response.put('response_x', response_x );
    } 

}