trigger FixCreator on Case (before insert) {
    Set<String> allEmails = new Set<String>();
    for (Case newCase: Trigger.new){
        if (newCase.SuppliedEmail != null) {
            allEmails.add(newCase.SuppliedEmail);
        }
    }
    List<User> potentialUsers = [SELECT Id, Email FROM User WHERE Email IN :allEmails];

    Map<String, User> emailToUserMap = new Map<String, User>();
    for (User u: potentialUsers){
        emailToUserMap.put(u.Email, u);
    }

    for (Case newCase : Trigger.new){
        if(newCase.SuppliedEmail != null){ 
            User creator = emailToUserMap.get(newCase.SuppliedEmail);
            if (creator != null){   
                newCase.CreatedById = creator.Id;
            }
        }
    }
}