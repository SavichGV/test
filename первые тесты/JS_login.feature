Feature: Sign in page functionality

@smoke
Scenario Outline: Correct credentials submit DM and TM
  Given I am on the "Sign in" page
  When type to input with name "Email" text "<c_mail>"
  And type to input with name "Password" text "<c_password>"
  And click on the "Log in" button
  Then I am on the "Division" page


  Examples:
    | c_mail       | c_password |
    | v.barysevich | Passw0rd   |
    | a.semikov    | Passw0rd   |




  Scenario: Correct credentials submit RE
      Given I am on the "Sign in" page
      When type to input with name "Email" text "y.skaradumau"
      And type to input with name "Email" text "y.skaradumau"
      And type to input with name "Password" text "Passw0rd"
      And click on the "Log in" button
      Then I am on the "Division" page





@regression
  Scenario Outline: Incorrect credentials submit
    Given I am on the "Sign in" page
    When type to input with name "Email" text "<mail>"
    And type to input with name "Password" text "<password>"
    And click on the "Log in" button
    Then I am on the "Sign in" page
    And message with text "Invalid username or password." occurs
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
    Given I am on the "Sign in" page
    When click on the "Log in" button
    Then I am on the "Sign in" page
    And message with text "Invalid username or password." occurs
    And input with name "Email" is empty*//
    And input with name "Password" is empty
