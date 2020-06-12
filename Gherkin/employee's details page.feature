Feature: Employee's details page functionality

@smoke
    Scenario Outline: Edit employee's details page
      Given I am logged in as "v.barysevich"
      When click on the avatar-icon "<employee>" employee
      And click on the "Edit" button
      Then I am on the "Edit" page
      And  "Edit" page should have "<value1>", "<value2>"


    Examples:
      | <employee> | value1 |
      | a.semikov | avatar-icon |??Andrey Semikov(First name and surname)?? | Sr. Software Engineer | "Cancel" button| "Save" button| location, start date, specialization drop-down, projects(value)|

      @smoke
          Scenario: Edit Employee's details functionality
            Given I am logged in as "v.barysevich"
            When click on the avatar-icon "Andrey Semikov" employee
            And click on the "Edit" button
            And click on the "specialization" select
            And click on the "Angular"
            And click on the "Save" button
            Then I am on the "Employee" page
            And  "specialization" field should have "Angular"

      @smoke
        Scenario: Not Edit Employee's details functionality
            Given I am logged in as "v.barysevich"
            When click on the avatar-icon "Andrey Semikov" employee
            And click on the "Edit" button
            And click on the "specialization" select
            And click on the "Angular"
            And click on the "Cancel" button
            Then I am on the "Employee" page
            And  "specialization" field should not have "Angular"

      @regression
  Scenario Outline:: Edit Employee's details functionality - negative
        Given I am logged in as "v.barysevich"
        When click on the avatar-icon "Andrey Semikov" employee
        And click on the "Edit" button
        And click on the "specialization" select
        And click on the "Angular"
        And click on the "Save" button
        Then I am on the "Employee" page
        And  "specialization" field should not have "<value1_en>", "<value2_en>"


    Examples:
        | <value1_en> | <value2_en> |
        | empty | "" |
