/*
Author : Hank
Date : 5/2/2018
*/
public with sharing class jQueryDataTableCtrl {
    @AuraEnabled
  public static List<List<objectCol>> fetchOpportunity() {
      List<List<objectCol>> resList = new List<List<objectCol>>();
      for (Opportunity opp : [SELECT Id,Name,Type,StageName,Amount,CloseDate FROM Opportunity LIMIT 500]){
          List<objectCol> tempList = new List<objectCol>();
          for (Integer i=0;i<=5;i++) {

              objectCol oc = new objectCol();
              oc.oppId = opp.Id;

              if (i==0) {
                  oc.Name = opp.Name;
                  oc.showEditIcon = false;
                  oc.isEditInput = false;
              }else if(i==1){
                  oc.Name = opp.Type;
                  oc.showEditIcon = false;
                  oc.isEditInput = false;
              }else if (i==2) {
                  oc.Name = opp.StageName;
                  oc.showEditIcon = false;
                  oc.isEditInput = false;
              }else if (i==3) {
                  oc.Name = String.valueOf(opp.Amount);
                  oc.showEditIcon = false;
                  oc.isEditInput = false;
              }else if (i==4) {
                  oc.Name = String.valueOf(opp.CloseDate);
                  oc.showEditIcon = true;
                oc.isEditInput = false;
              }else if (i==5) {
          oc.Name = 'Delete';
          oc.showEditIcon = false;
          oc.isEditInput = false;
        }
              tempList.add(oc);

          }
          resList.add(tempList);
      }
    Return resList;
  }
  @AuraEnabled
  public static String saveActionData(String cDate,String recordId) {
    Opportunity opp = new Opportunity();
    opp.Id = recordId;
    opp.CloseDate = Date.valueOf(cDate);
    update opp;
    return 'Success';
  }
  @AuraEnabled
  public static String deleteActionData(String recordId) {
    Opportunity opp = new Opportunity();
    opp.Id = recordId;
    delete opp;
    return 'Success';
  }
  public class objectCol{
      @AuraEnabled
      public String oppId{get;set;}
      @AuraEnabled
      public String Name{get;set;}
      //编辑按钮显示
      @AuraEnabled
      public Boolean showEditIcon{get;set;}
      //编辑框
      @AuraEnabled
      public Boolean isEditInput{get;set;}
  }
}