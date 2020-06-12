Feature: Meeting functionality

@smoke
    Scenario Outline: Open window for creating of meeting
      Given I am logged in as "v.barysevich"
      And I am on the "Employee" page
      When click on the "New meeting" button
      Then I have "New meeting" window
      And  "New meeting" window should have "<value1>", "<value2>", "<value3>"

    Examples:
      | value1  | value2 | value3 |
      | datepicker | "Status" field |input field | ????

      @smoke
          Scenario Outline: Create new meeting functionality
            Given I am logged in as "v.barysevich"
            And I am on the "Employee" page
            When click on the "New meeting" button
            And click on the "Datepicker" drop-down
            And click on the "2019/11/11" status
            And click on the "Status" select
            And click on the "Green" status
            And fill "Comment" input field [text]
            And click on the "Save" button
            Then I am on the "Employee" page
            And  the "Employee" page should have meeting with "<value1_m>", "<value2_m>", "<value3_m>"

    Examples:
| value1_m  | value2_m | value3_m |
| "2019/11/11" | Green | "" |


@smoke
    Scenario: Create new meeting with empty description functionality
      Given I am logged in as "v.barysevich"
      And I am on the "Employee" page
      When click on the "New meeting" button
      And click on the "Datepicker" drop-down
      And click on the "2019/11/11" status
      And click on the "Status" select
      And click on the "Green" status
      And click on the "Save" button
      Then I am on the "meeting-window" window
      And  the "meeting-window" window should have "Please, enter description for a current meeting." text

      @smoke
          Scenario: Create new meeting with only space in description functionality
            Given I am logged in as "v.barysevich"
            And I am on the "Employee" page
            When click on the "New meeting" button
            And click on the "Datepicker" drop-down
            And click on the "2019/11/11" status
            And click on the "Status" select
            And click on the "Green" status
          ???And fill "'space'" "Comment"input field  [text]
            And click on the "Save" button
            Then I am on the "meeting-window" window
            And  the "meeting-window" window should have "Please, enter description for a current meeting." text

@smoke
    Scenario Outline: Canceling of Create new meeting functionality
      Given I am logged in as "v.barysevich"
      And I am on the "Employee" page
      When click on the "New meeting" button
      And click on the "Cancel" button
      Then I am on the "Employee" page
      And  the "Employee" page should not have meeting with "<value1_m2>", "<value2_m2>", "<value3_m2>"

Examples:
| value1_m2  | value2_m2 | value3_m2 |
| current date | Green status | "" |


@smoke
    Scenario Outline: Edit meeting functionality
      Given I am logged in as "v.barysevich"
      And I am on the "Employee" page
      When click on the "Edit-icon" icon
      And click on the "Datepicker" drop-down
      And click on the "2019/12/11" status
      And click on the "Status" select
      And click on the "Red" status
      And fill "Comment" input field [text]
      And click on the "Save" button
      Then I am on the "Employee" page
      And  the "Employee" page should have meeting with "<value1_me>", "<value2_me>", "<value3_me>"

      Examples:
      | value1_me  | value2_me | value3_me |
      | 2019/12/11 | Green  | "" |

      @smoke
    Scenario: Edit meeting without changing functionality
      Given I am logged in as "v.barysevich"
      And I am on the "Employee" page
      When click on the "Edit-icon" icon
      And click on the "Save" button
      Then I am on the "meeting-window" window
      And  the "meeting-window" window should have "Please, change any field." text


      @smoke
    Scenario: Edit meeting without changing functionality
      Given I am logged in as "v.barysevich"
      And I am on the "Employee" page
      When click on the "Edit-icon" icon
      ??And fill "'space'" "Comment"input field  [text]
      And click on the "Save" button
      Then I am on the "meeting-window" window
      And  the "meeting-window" window should have "Please, change any field." text


      @smoke
          Scenario Outline: Canceling of Edit meeting functionality
            Given I am logged in as "v.barysevich"
            And I am on the "Employee" page
            When click on the "Edit-icon" icon
            And click on the "Datepicker" drop-down
            And click on the "2019/12/11" status
            And click on the "Status" select
            And click on the "Amber" status
            And fill "Comment" input field [text]
            And click on the "Cancel" button
            Then I am on the "Employee" page
            And  the "Employee" page should not have meeting with "<value1_me2>", "<value2_me2>", "<value3_me2>"

            Examples:
            | value1_me2  | value2_me2 | value3_me2 |
            | 2019/12/11 | Green status | "" |
