public class AnimalLocator {
    
    public static String getAnimalNameById(Integer id){
        String strName = '';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug(response.getStatusCode());
        if(response.getStatusCode() == 200){
            Map<String,Object> result = (Map<String,Object>)Json.deserializeUntyped(response.getBody());
            system.debug(result);
            Map<String,Object> ani =    (Map<String,Object>)result.get('animal');
            system.debug(ani);
            strName = String.valueOf(ani.get('name'));
            system.debug(strName);
            
        }
        
        return strName;
        
    }
}