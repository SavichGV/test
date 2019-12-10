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
      | y.skaradumau |  Passw0rd  |
