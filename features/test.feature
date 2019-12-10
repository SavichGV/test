Feature: Sign in page functionality

@smoke
Scenario Outline: Correct credentials submit DM and TM
  Given Open "https://staging-family.godeltech.com/division" url
  When type to input with name "Username or email" text "<c_mail>"
  And type to input with name "Password" text "<c_password>"
  And click on the "Log in" button
  Then I have "https://staging-family.godeltech.com/division" url

  Examples:
      | c_mail       | c_password |
      | v.barysevich | Passw0rd   |
      | a.semikov    | Passw0rd   |
      | y.skaradumau |  Passw0rd  |
