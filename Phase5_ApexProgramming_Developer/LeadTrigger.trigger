trigger LeadTrigger on Lead (before insert, before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        LeadHandler.assignLeadCategory(Trigger.new);
    }
}