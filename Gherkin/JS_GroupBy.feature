Feature: GroupBy functionality

  @smoke
  Scenario Outline: GroupBy functionality
    Given I am logged in as "<user>"
    When click on the drop-down "GroupBy" group
    And click on the drop-down "<group>" group
    Then I am on the "Division" page
    And I have the groups by "<nameGroup>"

    Examples:
    | user        | group | nameGroup |
    | v.barysevich  | Location |  |
    | a.semikov | Job_title|  |
    | v.barysevich | Projects |  |


    @smoke
    Scenario Outline: GroupBy functionality
      Given I am logged in as "<user>"
      And Employee from in the same "<group1>"
      When click on the drop-down "GroupBy" group
      Then drop-down "GroupBy" should not be "<group2>"


      Examples:
      | user        | group1 |group2 |
      | v.barysevich  |location| Location |
      | a.semikov | Job_title| Job_title |
      | v.barysevich | Projects | Projects |
