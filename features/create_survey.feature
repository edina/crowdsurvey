#encoding: utf-8
Feature:  survey designer/project manager wants to create a survey

  Scenario: Launch a survey using sample survey
    Given I have successfully logged in and authenticated the workbench
    And I have navigated to the "my surveys/'' page
    When I choose a sample survey
    Then a new survey page is generated
    And the web browser redirects to the survey page
    And the selected survey is available to edit in the survey designer
    And the survey launch URL and survey token is generated and displayed
    And a publicly accessible record viewer page is generated and the URL displayed
    And the survey is copied into my project directory
    And an instance of the PC-API is launched

  Scenario: Launch a survey using empty survey
      Given I have successfully logged in and authenticated the workbench
      And I have navigated to the "my surveys" page
      When I choose the empty survey template
      Then a new survey page is generated
      And the web browser redirects to the survey page
      And an survey is available to edit in the survey designer
      And the survey launch URL and survey token is generated and displayed
      And a publicly accessible record viewer page is generated and the URL displayed
      And an instance of the PC-API is launched

  Scenario: Edit existing survey fields
      Given I have successfully logged in and authenticated the workbench
      And I have launched a survey
      When navigate to the survey page
      Then I can add a new field
      And I can delete an existing field
      And I can reorder the position of an existing field

  Scenario: Apply general settings for survey
      Given I have successfully logged in and authenticated the workbench
      And I have launched a survey
      When I navigate to the survey page
      Then I can change the title of the survey
      And I can change the geometry type of the survey
      And I can add one or more custom attributes to the survey
      And I can define a bounding box for the survey

   Scenario: Add a text field to survey
   Scenario: Add an image field to survey
   Scenario: Add a single choice field to survey
   Scenario: Add a multi choice field to survey
   Scenario: add a choice to single or multi choice field
   Scenario: add a choice with image hint to single or multi choice field

   Scenario: Save survey with valid form
       Given I have successfully logged in and authenticated to workbench
       And I have launched a survey
       And I have navigated to the survey page
       And I have provided all required values for the survey fields
       And the survey is validated
       When I click the save button
       Then the survey form is saved
       And the survey is available via the PC_API

   Scenario: Save survey with invalid form
           Given I have successfully logged in and authenticated to workbench
           And I have launched a survey
           And I have navigated to the survey page
           And the survey is NOT validated
           When I click the save button
           Then the survey form is saved
           And the new version of the survey is NOT available via the PC_API
