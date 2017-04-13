@istest
public class CountFromActivityHistory_UT {
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
      update t;
      delete t;      
   // l.Fast_Phone__c=true;
      update l;
     
      Task tt=new Task();
      tt.WhoId=l.id;
      tt.Type='Email';
      tt.CurrencyIsoCode='EUR';
      tt.subject='Discovery Call';
      tt.status='completed';
      tt.Priority='High';
      tt.OwnerId=u.id;
      insert tt;
      update tt;
      delete tt;      
   // l.Fast_Phone__c=true;
      update l;
     
      Task ttt=new Task();
      ttt.WhoId=l.id;
      ttt.Type='LinkedIn Message';
      ttt.CurrencyIsoCode='EUR';
      ttt.subject='Discovery Call';
      ttt.status='completed';
      ttt.Priority='High';
      ttt.OwnerId=u.id;
      insert ttt;
      update ttt;
      delete ttt;      
   // l.Fast_Phone__c=true;
      update l;
     
     
     }
}