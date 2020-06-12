Feature: Home page functionality

  @smoke
  Scenario Outline: Home page DM functionality
    Given I am logged in as "v.barysevich"
    Then I am on the "Division" page
    And "Division" page should have "<value1>", "<value2>", "<value3>", "<value4>", "<value5>", "<value6>", "<value7>"

    Examples:
  | value1       | value2  | value3    | value4   | value5      | value6            |  value7 |
  | Welcome back | Viktar  | Employees | group by | avatar-icon | "Division" button | "Talent" button |


    @smoke
    Scenario Outline: Home page TM functionality
      Given I am logged in as "a.semikov"
      Then I am on the "Division" page
      And "Division" page should have "<value1_t>", "<value2_t>", "<value3_t>", "<value4_t>", "<value5_t>"

      Examples:

    | value1_t     | value2_t | value3_t  | value4_t | value5_t    |
    | Welcome back | Andrey   | Employees | group by | avatar-icon |


    @smoke
    Scenario Outline: Home page RE functionality
      Given I am logged in as "y.skaradumau"
      Then I am on the "Division" page
      And "Division" page shouldn't have "<value1_e>", "<value2_e>"

      Examples:

    | value1_e   | value2_e  |
    | group by | avatar-icon |

    @smoke
    Scenario Outline: Home page RE functionality
      Given I am logged in as "y.skaradumau"
      Then I am on the "Division" page
      And "Division" page should have "<value1_e1>", "<value2_e2>", <value3_e3>, <value4_e4>, <value5_e5>

      Examples:

      | value1_e2    | value2_e1| value3_e3 | value4_e4   | value5_e5 |
      | Welcome back | Yauhen   | Meeting ? | Feedback ?  | "No found meeting" text |
