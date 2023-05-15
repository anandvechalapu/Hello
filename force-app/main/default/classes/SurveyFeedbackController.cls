by the user

public with sharing class SurveyFeedbackController {

    //Define all the necessary sObjects
    public Survey_Questions__c surveyQuestion {get; set;}
    public Survey_Question_Choices__c surveyQuestionChoice {get; set;}
    public Survey_Responses__c surveyResponse {get; set;}

    //Define list to store all the questions from the survey
    public List<Survey_Questions__c> surveyQuestionsList {get; set;}

    //Define list to store question choices for each questions
    public List<Survey_Question_Choices__c> surveyQuestionChoicesList {get; set;}

    //Define list to store all the responses
    public List<Survey_Responses__c> surveyResponsesList {get; set;}

    //Define Apex method to get all the questions related to a specific survey
    @AuraEnabled
    public static List<Survey_Questions__c> getQuestionsForSurvey(Id surveyId) {
        List<Survey_Questions__c> questionsList = [SELECT Id, Question__c, Type__c FROM Survey_Questions__c WHERE Survey__c = :surveyId];
        return questionsList;
    }

    //Define Apex method to get all the question choices for each questions
    @AuraEnabled
    public static List<Survey_Question_Choices__c> getQuestionChoicesForQuestion(Id questionId) {
        List<Survey_Question_Choices__c> questionChoicesList = [SELECT Id, Choice_Value__c FROM Survey_Question_Choices__c WHERE Question__c = :questionId];
        return questionChoicesList;
    }

    //Define Apex method to save survey responses
    @AuraEnabled
    public static void saveSurveyResponse(Survey_Responses__c surveyResponse) {
        insert surveyResponse;
    }
}