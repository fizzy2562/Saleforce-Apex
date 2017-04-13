@isTest
public class FastPhone_Activity_UT {
  static testmethod void testctrl(){
  
      Lead l=new lead();
      l.Company='test';
      l.lastname='sumi';
      l.LeadSource='event';
      l.Rating='hot';
      l.Status='contacted';
      l.Calls__c=0;
      l.Emails__c=0;
      l.LinkedIn_Messages__c=0;
      l.Industry='energy';
      insert l;
      User u = [Select id,name from User where id = :UserInfo.getUserID()];
      Task t=new Task();
      t.WhoId=l.id;
      t.Type='Call';
      t.CurrencyIsoCode='EUR';
      t.subject='Discovery Call';
      t.status='completed';
      t.Priority='High';
      t.OwnerId=u.id;
      insert t;
      delete t;      
   // l.Fast_Phone__c=true;
      update l;
  }
}