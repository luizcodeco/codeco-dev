@istest
private class TestForceForecasting {
    @IsTest
    static void insertNewUser(){
        
        User userToCreate = new User();

        userToCreate.FirstName = 'Luiz';
        userToCreate.LastName = 'Codeco';
        userToCreate.Email = 'luiz.codeco@icloud.com';
        userToCreate.Username = 'luiz.codeco@icloud.com.test';
        userToCreate.Alias = 'luicode';
        userToCreate.ProfileId = '00e3i000001KyfkAAC';
        
        userToCreate.TimeZoneSidKey = 'America/Denver';
        userToCreate.LocaleSidKey = 'en_US';
        userToCreate.EmailEncodingKey = 'UTF-8';
        userToCreate.LanguageLocaleKey = 'en_US';

        insert userToCreate;

    }
}
