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
      Then the geojson for the record is displayed as read only

   Scenario: Delete an individual record using record viewer map

   Scenario: Edit an individual record using record viewer map

   Scenario: Add an individual record using record viewer map
      Given the public URL for the survey record viewer page exists
      And a PC_API endpoint for the survey exists
      And interactive map showing the records as pins on the map is visible
      When I click on a pin tool in the map toolbox and then click a position on the map
      Then a geojson for the new record is displayed
      And the geometry point is populated with the position of the pin on the map
      And the timestamp is populated using the system time
      And the properties of the survey are populated with default values

    Scenario: change location of existing record using record viewer map




    Scenario: Download records as csv
    Scenario: View/Download all records as geojson
    Scenario: Download all records as KML
    Scenario: View records as table using Jupyter notebook
    Scenario: filter records by date using Jupyter notebook
    Scenario: filter records by survey using Jupyter notebook
    Scenario: view record in file system using Jupyter notebook server
    Scenario: edit a record using Jupyter notebook
    Scenario: delete a record using Jupyter notebook
    Scenario: import records from csv file using Jupyter notebook
