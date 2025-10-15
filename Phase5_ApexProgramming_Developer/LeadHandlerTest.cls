@isTest
private class LeadHandlerTest {
    @isTest static void testAssignLeadCategory() {
        Lead l = new Lead(LastName='Test Lead', Company='ABC', LeadSource='Web');
        insert l;
        Lead insertedLead = [SELECT Lead_Category__c FROM Lead WHERE Id = :l.Id];
        System.assertEquals('Online', insertedLead.Lead_Category__c);
    }
}