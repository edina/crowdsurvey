Scenario: Enable OAuth without approval
  Given the public URL for the survey record viewer page exists
  And a PC_API endpoint for the survey exists
  When I click the Enable OAuth button
  And I choose the  no approval option
  Then all external access to the PC_API will require OAuth token

Scenario: Enable OAuth with approval
    Given the public URL for the survey record viewer page exists
    And a PC_API endpoint for the survey exists
    When I click the Enable OAuth button
    And I choose the approval required option
    Then all external access to the PC_API will require OAuth token
    And external access to the PC_API will require the project administrator to approve the users credentials

Scenario: Change OAuth acceptance message
