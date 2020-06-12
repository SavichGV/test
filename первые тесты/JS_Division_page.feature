Feature: Division page functionality

@smoke
    Scenario Outline: Division page functionality
      Given I am logged in as "v.barysevich"
      When click on the button "Talent"
      Then I am on the "byTalent" page
      And grouping by TM should have "<value1>", "<value2>"

      | value1 | value2 |
      | u.azarko |a.semikov |

  @smoke
      Scenario Outline: Division page functionality - negative
      Given I am logged in as "v.barysevich"
      When click on the button "Division"
      Then I am on the "Division" page
      And grouping by TM should not have "<value1>", "<value2>"

        | value1 | value2 |
        | u.azarko |a.semikov |


        @smoke
            Scenario: Division page functionality for RE
            Given I am logged in as "y.skaradumau"
            Then I am on the "Division" page
            And "Division" page should have text "No employees found"





  @smoke
  Scenario Outline: Employee page functionality
    Given I am logged in as "v.barysevich"
    When click on the avatar-icon "<employee>" employee
    Then I am on the "Employee" page
    And Employee page should have "<value1>", "<value2>", "<value3>", "<value4>", "<value5>", "<value6>", "<value7>"

    Examples:
      | employee |  | value1     | value2 | value3 | value4     | value5      | value6            |  value7 |
      | Andrey Semikov | Welcome back  | Viktar | Andrey Semikov (First name and surname)| JobTitle | "Edit" button | location | start date | specialization | projects |
      | Valeryia Osos |  Welcome back | Viktar | Valeryia Osos (First name and surname) | JobTitle |"Edit" button | location | start date | specialization | projects |
      | Dzianis Hrynko | Welcome back  | Viktar | Dzianis Hrynko (First name and surname)| JobTitle |"Edit" button | location | start date | specialization | projects |
      |                |               |        | ?                                      |     value or name of field? |? |? |? |? |




  @smoke
      Scenario Outline: Employee page functionality - negative
        Given I am logged in as "<user>"
        When I am on the "Division" page
        Then The page should not have "<avatar-icon>" employee

        Examples:
          | user | avatar-icon |
          | v.barysevich | Viktar Barysevich |
          | a.semikov | Andrey Semikov |
