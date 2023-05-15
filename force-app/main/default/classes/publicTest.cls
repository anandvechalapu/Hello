(questionNameField);
            // Update Object
            surveyQuestionObjType.updateSObjects(fields);
        }
    }
 
    // Create Custom Field Question Type with Picklist Type
    public static void createQuestionTypeField(){
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        if(surveyQuestionObjType != null){
            Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionObjType.getDescribe();
            Schema.SObjectField[] fields = surveyQuestionObjResult.fields.getMap().values();
            // Create Field
            Schema.SObjectField questionTypeField = new Schema.SObjectField('Question_Type__c', Schema.DisplayType.PICKLIST);
            fields.add(questionTypeField);
            // Update Object
            surveyQuestionObjType.updateSObjects(fields);
        }
    }
 
    // Create Custom Field Question Options with Data Type Text Area (Long)
    public static void createQuestionOptionsField(){
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        if(surveyQuestionObjType != null){
            Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionObjType.getDescribe();
            Schema.SObjectField[] fields = surveyQuestionObjResult.fields.getMap().values();
            // Create Field
            Schema.SObjectField questionOptionsField = new Schema.SObjectField('Question_Options__c', Schema.DisplayType.TEXTAREA, 255);
            fields.add(questionOptionsField);
            // Update Object
            surveyQuestionObjType.updateSObjects(fields);
        }
    }
 
    // Create Custom Field Is Active with Data Type Checkbox
    public static void createIsActiveField(){
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        if(surveyQuestionObjType != null){
            Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionObjType.getDescribe();
            Schema.SObjectField[] fields = surveyQuestionObjResult.fields.getMap().values();
            // Create Field
            Schema.SObjectField isActiveField = new Schema.SObjectField('Is_Active__c', Schema.DisplayType.CHECKBOX);
            fields.add(isActiveField);
            // Update Object
            surveyQuestionObjType.updateSObjects(fields);
        }
    }
}

// Generated Apex Test Class
@isTest
private class SurveyQuestionObjectTest {
    static testMethod void testCreateSurveyQuestionsObject(){
        // Test Create Survey Questions Object
        Test.startTest();
            SurveyQuestionObject.createSurveyQuestionsObject();
        Test.stopTest();
 
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        System.assertNotEquals(null, surveyQuestionObjType, 'Survey Question Object not created');
 
        SObjectType surveyQuestionsObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        System.assertNotEquals(null, surveyQuestionsObjType, 'Survey Questions Object not created');
    }
 
    static testMethod void testCreateSurveyQuestionsRecordName(){
        // Test Create Survey Questions Record Name
        Test.startTest();
            SurveyQuestionObject.createSurveyQuestionsRecordName();
        Test.stopTest();
 
        SObjectType surveyQuestionObjType = Schema.getGlobalDescribe().get('Survey_Questions__c');
        Schema.DescribeSObjectResult surveyQuestionObjResult = surveyQuestionObjType.getDescribe();
        Schema.SObjectField nameField = surveyQuestionObjResult.fields.getMap().get('Name');
        System.assertEquals('SQ-{00001}', nameField.getAutoNumberPrefix(), 'Auto Number Format not matching');
        System.assertEquals(1, nameField.getStartingNumber(), 'Starting Number not matching');
    }
 
    static testMethod void testCreateLookupRelation(){
        // Test Create Lookup Relation
        Test.startTest();
            SurveyQuestionObject.createLookupRelation();
        Test.stopTest();
 
        SObjectType surveyQuestionObjType = Schema