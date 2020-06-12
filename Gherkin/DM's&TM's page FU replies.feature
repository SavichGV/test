Feature: DM's&TM's page FU replies functionality

@smoke
    Scenario Outline: FU after creating of meeting functionality
      Given I am logged in as "v.barysevich"
      And I have created meeting for "<Employee>" ????
      And I am on the "Employee" page
      Then the "Employee" page should have "<value1>", "<value2>", "<value3>", "<value4>"


      Examples:
      ????  | value1       | value2       |value3         |value4 |
            | "date" field |  notes-icon  |"Pending" text |"Status" field |


@smoke
      Scenario Outline: Inf about created meeting functionality
          Given I am logged in as "v.barysevich"
          And I have created meeting for "<Employee>"
          And I am on the "Employee" page
          When I click on the "notes-icon" icon
          Then I am on the "meeting-window" window
          And the "meeting-window" window should have "<value1_i>", "<value2_i>", "<value3_i>"


    Examples:
          | value1_i     | value2_i        |value3_i   |
          | "date" field | "comment" text ??? |"Status" field |

  @smoke
     Scenario Outline:  DM's&TM's page with FU functionality
          Given "v.barysevich" has a FU from "<Employee>" ???
          And I am logged in as "v.barysevich"
          When click "<avatar-icon>" employee
          Then I am on the "Employee" page
          And the "Employee" page should have "<value1_fu>", "<value2_fu>", "<value3_fu>", "<value4_fu>", "<value5_fu>"

    Examples:
          | value1_fu    | value2_fu    |value3_fu     |value4_fu      | value5_fu |
          | "date" field |  notes-icon  |"FU-text" text|"Status" field | "replies-window" window |


    @smoke
       Scenario Outline:  DM's&TM's page with replies to FU functionality
          Given I am logged in as "v.barysevich"
          And "v.barysevich" has a FU from "<Employee>" ???
          And I am on the "Employee" page
          When I fill "replies-window" window by "replies-text" text
          And click "Send" button
          Then I am on the "Employee" page
          And the "Employee" page should have "<value1_fu>", "<value2_fu>", "<value3_fu>", "<value4_fu>", "<value5_fu>"

        Examples:
          | value1_fu    | value2_fu    |value3_fu     |value4_fu          | value5_fu |
          | "date" field |  notes-icon  |"FU-text" text|"replies-text" text|"Status" field |


      @smoke
        Scenario Outline:  DM's&TM's page with empty replies to FU functionality
           Given I am logged in as "v.barysevich"
           And "v.barysevich" has a FU from "<Employee>" ???
           When click "Send" button
           Then I am on the "Employee" page
           And the "Employee" page should have "<value1_fu>", "<value2_fu>", "<value3_fu>", "<value4_fu>", "<value5_fu>"

          Examples:
            | value1_fue    | value2_fue    |value3_fue     |value4_fue     | value5_fu |
            | "date" field |  notes-icon  |"FU-text" text|"Status" field    |"replies-window" window |???validation

      @smoke
          Scenario Outline:  DM's&TM's page with empty replies to FU functionality
               Given I am logged in as "v.barysevich"
               And "v.barysevich" has a FU from "<Employee>" ???
               When fill "replies-window" window by "'space'" text
               And click "Send" button
               Then I am on the "Employee" page
               And the "Employee" page should have "<value1_fu>", "<value2_fu>", "<value3_fu>", "<value4_fu>", "<value5_fu>"

        Examples:
            | value1_fue    | value2_fue    |value3_fue     |value4_fue     | value5_fu |
            | "date" field |  notes-icon  |"FU-text" text|"Status" field |"replies-window" window |???validation


    @smoke
        Scenario:  DM's&TM's page ignore to FU functionality
              Given I am logged in as "v.barysevich"
              And "v.barysevich" has a FU from "<Employee>" ???
              When click "Ignore" button
              Then I am on the "Employee" page
              And the "Employee" page shouldn't have "replies-window" window
