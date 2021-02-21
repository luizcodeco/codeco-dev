@isTest
public class TestFindDupes {
    @IsTest
    static void testDupes(){

        Contact c = new Contact();
        c.FirstName = 'Luiz';
        c.LastName = 'Codeco';
        c.Email = 'luicodeco@gmail.com';
        insert c;

        Lead dupeLead = new Lead();
        dupeLead.FirstName = 'Lui';
        dupeLead.LastName = 'Codeco';
        dupeLead.Company = 'Consultoria Luiz Codeco';
        dupeLead.Email = 'luicodeco@gmail.com';

        try {
            insert dupeLead;
        } catch (Exception e) {
            System.debug('Erro de contato já existente');
        }
        
        List<Lead> dupes = [SELECT Id FROM Lead WHERE Email = 'luicodeco@gmail.com'];
        System.assertEquals(0, dupes.size());

        Lead legitLead = new Lead();
        legitLead.FirstName = 'Jessica';
        legitLead.LastName = 'Noronha';
        legitLead.Company = 'Consultoria Jessica Noronha';
        legitLead.Email = 'jess@gmail.com';
        insert legitLead;

        List<Lead> legits = [SELECT Id FROM Lead WHERE Email = 'jess@gmail.com'];
        System.assertEquals(1, legits.size());
    }
}
