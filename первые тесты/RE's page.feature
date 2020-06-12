Feature: RE's page functionality

@smoke
    Scenario Outline: RE's page without meeting functionality
      Given I am logged in as "y.skaradumau"
      Then I am on the "RE" page
      And the "RE" page should have "<value1>", "<value2>"

  Examples:
      | value1 | value2 |
      | Personal meetings |No meetings found |

  @smoke
      Scenario Outline: RE's page with meeting functionality
      Given "y.skaradumau" has a planned meeting
      When I am logged in as "y.skaradumau"
      Then I am on the "RE" page
      And the "RE" page should have "<value1_m>", "<value2_m>", "<value3_m>"

      Examples:
        | value1_m          | value2_m |value3_m |
        | Personal meetings | "date" field    |"FU window" |


    @smoke
      Scenario Outline:  RE's page with FU functionality
        Given "y.skaradumau" has a planned meeting
        And I am logged in as "y.skaradumau"
        When I fill "FU window" window by "FU-text" text
        And click "Send" button
        Then I am on the "RE" page
        And the "RE" page should have "<value1_mf>", "<value2_mf>", "<value3_mf>"

      Examples:
        | value1_mf          | value2_mf |value3_mf |
        | Personal meetings  | "date" field    |"FU-text" text |

        @smoke
          Scenario Outline:  RE's page with empty FU-input functionality
            Given "y.skaradumau" has a planned meeting
            And I am logged in as "y.skaradumau"
            When click "Send" button
            Then I am on the "RE" page
            And the "RE" page should have "<value1_mf>", "<value2_mf>", "<value3_mf>"

          Examples:
            | value1_mfe         | value2_mfe   |value3_mfe |
            | Personal meetings  | "date" field |"FU window" | ???validation

            @smoke
              Scenario Outline:  RE's page with space in FU-input functionality
                Given "y.skaradumau" has a planned meeting
                And I am logged in as "y.skaradumau"
                When fill "FU-input" by "'space'" text
                And click "Send" button
                Then I am on the "RE" page
                And the "RE" page should have "<value1_mf>", "<value2_mf>", "<value3_mf>"

              Examples:
                | value1_mfs         | value2_mfs   |value3_mfs |
                | Personal meetings  | "date" field |"FU window" | ???validation

        @smoke
          Scenario Outline:  RE's page with FU replies functionality
            Given "y.skaradumau" has FU replies as "text2" text
            When I am logged in as "y.skaradumau"
            Then I am on the "RE" page
            And the "RE" page should have "<value1_mfr>", "<value2_mfr>", "<value3_mfr>", "<value4_mfr>"

          Examples:
            | value1_mfr          | value2_mfr |value3_mfr | value4_mfr |
            | Personal meetings  | "date" field   |"FU-text" text | "text2" text  |
