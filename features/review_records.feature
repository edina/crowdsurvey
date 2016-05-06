#encoding: utf-8
Feature:  survey designer/volunteer wants to review records for a survey

  Scenario: View records on map
    Given the public URL for the survey record viewer page exists
    And a PC_API endpoint for the survey exists
    When I access the record viewer page
    Then an interactive map showing the records as pins on the map is displayed

  Scenario: View an individual record using record viewer map
    Given the public URL for the survey record viewer page exists
    And a PC_API endpoint for the survey exists
    And interactive map showing the records as pins on the map is visible
    When I click on a pin on map
    Then the geojson for the record is displayed
    And a pop appears showing properties of the record

  Scenario: Delete an individual record using record viewer map
    Given the public URL for the survey record viewer page exists
    And a PC_API endpoint for the survey exists
    And interactive map showing the records as pins on the map is visible
    And I have clicked a pin on the map
    And a pop appears showing properties of the record
    When I can click the delete record button
    Then the feature is deleted from storage
    And the pin is removed from map
    And the displayed geojson is removed

  Scenario: Edit an individual record using record viewer map
    Given the public URL for the survey record viewer page exists
    And a PC_API endpoint for the survey exists
    And interactive map showing the records as pins on the map is visible
    When I click on a pin on map
    Then the geojson for the record is displayed
    And a pop appears showing properties of the record
    And I can type new values for properties
    But I cannot change the name property
    And I cannot change the geometry property

  Scenario: Add an individual record using record viewer map
      Given the public URL for the survey record viewer page exists
      And a PC_API endpoint for the survey exists
      And interactive map showing the records as pins on the map is visible
      When I click on a pin tool in the map toolbox and then click a position on the map
      Then a pin is added to the map at the position I clicked
      And a geojson for the new record is displayed
      And the geometry point is populated with the position of the pin on the map
      And the timestamp is populated using the system time
      And a default name property is auto generated to populate the name property of the record

    Scenario: change location of existing record using record viewer map
      Given the public URL for the survey record viewer page exists
      And a PC_API endpoint for the survey exists
      And an interactive map showing the records as pins on the map is visible
      When I drag a pin on the map
      And the geometry point in the record geojson changes to the location of the pin

    Scenario: Download records as csv
      Given the public URL for the survey record viewer page exists
      And a PC_API endpoint for the survey exists
      And an interactive map showing the records as pins on the map is visible
      When I select export records button
      And select csv format
      Then a csv file is generated
      And the csv file is downloaded to my web browser

    Scenario: Download all records as KML
      Given the public URL for the survey record viewer page exists
      And a PC_API endpoint for the survey exists
      And an interactive map showing the records as pins on the map is visible
      When I select export records button
      And select csv format
      Then a csv file is generated
      And the csv file is downloaded to my web browser

    Scenario: View records as table using Jupyter notebook
    Scenario: filter records by date using Jupyter notebook
    Scenario: filter records by survey using Jupyter notebook
    Scenario: view record in file system using Jupyter notebook
    Scenario: edit a record using Jupyter notebook
    Scenario: delete a record using Jupyter notebook
    Scenario: import records from csv file using Jupyter notebook
