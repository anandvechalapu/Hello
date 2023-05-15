// Generated Apex class
public class SurveyQuestionObject {
    // Create a custom Object Survey Questions, with Label Name and Plural Label as Survey Questions
    public static void createSurveyQuestionsObject(){
        // Create object
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        if(surveyQuestionObjType == null){
            Schema.SObjectType surveyQuestionType = Schema.getGlobalDescribe().get('Survey_Questions__c');
            Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionType.getDescribe();
            Schema.SObjectField[] fields = new Schema.SObjectField[0];
            Map<String,Schema.SObjectField> fieldMap = surveyQuestionObjResult.fields.getMap();
            // Create label
            surveyQuestionObjType = Schema.createSObject(surveyQuestionType.getName(), fields, fieldMap, false);
        }
        // Create Plural Label
        SObjectType surveyQuestionsObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        if(surveyQuestionsObjType == null){
            Schema.SObjectType surveyQuestionsType = Schema.getGlobalDescribe().get('Survey_Questions__c');
            Schema.DescribeSObjectResult surveyQuestionsObjResult = surveyQuestionsType.getDescribe();
            Schema.SObjectField[] fields = new Schema.SObjectField[0];
            Map<String,Schema.SObjectField> fieldMap = surveyQuestionsObjResult.fields.getMap();
            // Create label
            surveyQuestionsObjType = Schema.createSObject(surveyQuestionsType.getName(), fields, fieldMap, false);
        }
    }
 
    // Create a Record Name as Survey Questions with Data Type as Auto Number and the Auto Number Format Should be SQ-{00001} with Starting Sting as 1
    public static void createSurveyQuestionsRecordName(){
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        if(surveyQuestionObjType != null){
            Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionObjType.getDescribe();
            Schema.SObjectField[] fields = surveyQuestionObjResult.fields.getMap().values();
            // Create Record Name Field
            Schema.SObjectField nameField = new Schema.SObjectField('Name', Schema.DisplayType.AUTO_NUMBER, 'SQ-{00001}');
            fields.add(nameField);
            // Update Object
            surveyQuestionObjType.updateSObjects(fields);
        }
    }
 
    // Create Lookup relation between Survey Question Object and Survey Object, whereas Survey Object is parent for Survey Question Object
    public static void createLookupRelation(){
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        SObjectType surveyObjType = Schema.getGlobalDescribe().get('Survey__c');
        if(surveyQuestionObjType != null && surveyObjType != null){
            Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionObjType.getDescribe();
            Schema.SObjectField[] fields = surveyQuestionObjResult.fields.getMap().values();
            // Create Lookup Relation
            Schema.SObjectField surveyLookupField = new Schema.SObjectField('Survey__c', Schema.DisplayType.REFERENCE, surveyObjType);
            fields.add(surveyLookupField);
            // Update Object
            surveyQuestionObjType.updateSObjects(fields);
        }
    }
 
    // Create Custom Field Question Name with Data Type Text (80)
    public static void createQuestionNameField(){
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        if(surveyQuestionObjType != null){
            Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionObjType.getDescribe();
            Schema.SObjectField[] fields = surveyQuestionObjResult.fields.getMap().values();
            // Create Field
            Schema.SObjectField questionNameField = new Schema.SObjectField('Question_Name__c', Schema.DisplayType.TEXT, 80);
            fields.add