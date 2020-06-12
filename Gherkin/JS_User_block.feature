Feature: User block functionality

  @smoke
  Scenario Outline: User block functionality
    Given I am logged in as "v.barysevich"
    When click on the drop-down "User block"
    Then I am on the "Division" page
    And User block should have "<value1>", "<value2>", "<value3>", "<value4>"

Examples:

| <value1> | <value2> | <value3> | <value4> |
| Welcome back|Viktar | Reports | Please help us to improve and send the error report |



@smoke
Scenario Outline: User block functionality
  Given I am logged in as "v.barysevich"
  And drop-down "User block" is opened
  When click on the drop-down "User block"
  Then I am on the "Division" page
  And User block should not have "<value1>", "<value2>", "<value3>", "<value4>"

  Examples:

  | <value1> | <value2> | <value3> | <value4> |
  | Welcome back|Viktar | Reports | Please help us to improve and send the error report |



  send report
  sign out
