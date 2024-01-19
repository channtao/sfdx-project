@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    global HTTPResponse respond(HttpRequest request){
        HttpResponse resp = new HttpResponse();
        resp.setHeader('Context_Type', 'application/json');
        resp.setBody('{"animal":{"id":1,"name":"cow","eat":"grass"}}');
        resp.setStatusCode(200);
        return resp;
    }
}