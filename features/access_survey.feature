#encoding: utf-8
Feature:  data collector wants to access a project so that they can download the survey and create records
 
  Scenario: Access project from launch URL
    Given the project coordinator has created a launch URL
    And I have already downloaded the app
    When I touch URL link on my device
    Then the app is lauched
    And configured to use the correct PC-API instance
    And downloads all the survey forms assoicated with the project


