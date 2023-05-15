@isTest
private class SurveyFeedbackControllerTest {

    static testMethod void getQuestionsForSurveyTest(){

        //Create Survey and Questions
        Survey__c survey = new Survey__c();
        insert survey;

        Survey_Questions__c question1 = new Survey_Questions__c(Survey__c = survey.Id, Type__c = 'Multiple Choice', Question__c = 'Test Question 1');
        insert question1;

        Survey_Questions__c question2 = new Survey_Questions__c(Survey__c = survey.Id, Type__c = 'Multiple Choice', Question__c = 'Test Question 2');
        insert question2;

        //Test getQuestionsForSurvey method
        Test.startTest();
        List<Survey_Questions__c> questionsList = SurveyFeedbackController.getQuestionsForSurvey(survey.Id);
        Test.stopTest();

        //Assert that the record is returned
        System.assertEquals(2, questionsList.size());
    }

    static testMethod void getQuestionChoicesForQuestionTest(){

        //Create Survey, Questions, and Choices
        Survey__c survey = new Survey__c();
        insert survey;

        Survey_Questions__c question1 = new Survey_Questions__c(Survey__c = survey.Id, Type__c = 'Multiple Choice', Question__c = 'Test Question 1');
        insert question1;

        Survey_Question_Choices__c choice1 = new Survey_Question_Choices__c(Question__c = question1.Id, Choice_Value__c= 'Choice1');
        insert choice1;

        Survey_Question_Choices__c choice2 = new Survey_Question_Choices__c(Question__c = question1.Id, Choice_Value__c= 'Choice2');
        insert choice2;

        //Test getQuestionChoicesForQuestion method
        Test.startTest();
        List<Survey_Question_Choices__c> questionChoicesList = SurveyFeedbackController.getQuestionChoicesForQuestion(question1.Id);
        Test.stopTest();

        //Assert that the record is returned
        System.assertEquals(2, questionChoicesList.size());
    }

    static testMethod void saveSurveyResponseTest(){

        //Create Survey, Questions, Choices, and Response
        Survey__c survey = new Survey__c();
        insert survey;

        Survey_Questions__c question1 = new Survey_Questions__c(Survey__c = survey.Id, Type__c = 'Multiple Choice', Question__c = 'Test Question 1');
        insert question1;

        Survey_Question_Choices__c choice1 = new Survey_Question_Choices__c(Question__c = question1.Id, Choice_Value__c= 'Choice1');
        insert choice1;

        Survey_Responses__c response = new Survey_Responses__c(Survey__c = survey.Id, Question__c = question1.Id, Choice__c = choice1.Id);

        //Test saveSurveyResponse method
        Test.startTest();
        SurveyFeedbackController.saveSurveyResponse(response);
        Test.stopTest();

        //Assert that the record is saved
        System.assertNotEquals(null, response.Id);
    }
}