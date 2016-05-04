#encoding: utf-8
Feature:  data collector wants to access a project so that
they can download the survey and create records

  Scenario: Access project from launch URL
    Given the survey designer has created a launch URL
    And I have already downloaded the app
    When I touch URL link on my device
    Then the app is launched
    And configured to use the correct PC-API instance for this project
    And downloads all the survey forms and maps associated with the project

  Scenario: Access project from launch URL
    Given the survey designer has created a launch URL
    And I have NOT already downloaded the app
    When I touch URL link on my device
    Then I'm directed to the App Store page
    And can download the app to my device
