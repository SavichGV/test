Feature: Sign in page functionality

@smoke
Scenario Outline: Correct credentials submit DM and TM
  Given I am not logged in
  When I visit the "Sign in" page
  And type to input with name "Email" text "<c_mail>"
  And type to input with name "Password" text "<c_password>"
  And click on the "Log in" button
  Then I am on the "Division" page
  And User page should have "<value1>", "<value2>", "<value3>", "<value4>", "<value5>", "<value6>", "<value7>"

  Examples:
    | c_mail       | c_password | value1     | value2 | value3 | value4     | value5      | value6            |  value7 |
    | v.barysevich | Passw0rd | Welcome back |Viktar | Employees | group by | avatar-icon | "Division" button | "Talent" button |
    | a.semikov    | Passw0rd | Welcome back |Andrey | Employees | group by | avatar-icon | | |

    correct users?


    @smoke
    Scenario Outline: Correct credentials submit RE
      Given I am not logged in
      When I visit the "Sign in" page
      And type to input with name "Email" text "y.skaradumau"
      And type to input with name "Password" text "Passw0rd"
      And click on the "Log in" button
      Then I am on the "Division" page
      And User page should have "<value1>", "<value2>", "<value3>", "<value4>"

  Examples:

 | value1      | value2| value3   | value4     |
 | Welcome back|Yauhen |Employees | "No employees found" text |



@regression
  Scenario Outline: Incorrect credentials submit
    Given I am not logged in
    When I visit the "Sign in" page
    And type to input with name "Email" text "<mail>"
    And type to input with name "Password" text "<password>"
    And click on the "Log in" button
    Then I am on the "Sign in" page
    And message with text "The email address or password is incorrect. Please try again" occurs
    And input with name "Email" has text "<mail>"
    And input with name "Password" is empty

    Examples:
      | mail | password |
      | v.barysevich | image |
      | "<?&^&*^*)/>" | "<?&^&*^*)/>" |
      | test@mail.com | password |
      | v.barysevich  | password |
      | v.barysevich |  |


@regression
    Scenario: Submit empty form
    Given I am not logged in
    When I visit the "Sign in" page
    And click on the "Log in" button
    Then I am on the "Sign in" page
    And message with text "Invalid username or password." occurs
    And input with name "Email" is empty
    And input with name "Password" is empty
