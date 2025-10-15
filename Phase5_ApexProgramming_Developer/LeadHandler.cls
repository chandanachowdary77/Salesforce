public class LeadHandler {
    public static void assignLeadCategory(List<Lead> leads) {
        for(Lead l : leads) {
            if(l.LeadSource == 'Web') l.Lead_Category__c = 'Online';
            else if(l.LeadSource == 'Referral') l.Lead_Category__c = 'Partner';
            else l.Lead_Category__c = 'General';
        }
    }
}