#encoding: utf-8
Feature:  data collector wants to access a project so that
they can download the survey and create records

  Scenario: Access survey from launch URL
    Given the survey designer has created a launch URL
    And I have already downloaded the app
    When I touch launch URL link on my device
    Then the app is launched
    And the app configured to use the correct PC-API instance for this survey
    And the app downloads all the survey forms and maps associated with the project

  Scenario: Download app from launch URL
    Given the survey designer has created a launch URL
    And I have NOT already downloaded the app
    When I touch URL link on my device
    Then I'm directed to the App Store page for the app
    And I can download the app to my device
