trigger OpportunityTrigger on SOBJECT (before insert, after insert, before update, after update, before delete, after delete) {

    OpportunityTriggerHandler handler = new OpportunityTriggerHandler(Trigger.isExecuting, Trigger.size);

    if (Trigger.isInsert){
        if (Trigger.isBefore){

        } else {

        }
    } else if (Trigger.isUpdate) {
        if (Trigger.isBefore){

        } else {

        }
    } else if (Trigger.isDelete){
        if (Trigger.isBefore){

        } else {

        }
    }


}