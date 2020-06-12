Feature: Dashboard page functionality

  @smoke
  Scenario Outline: Dashboard navigation tiles functionality
    Given I am logged in as "John Smith"
    When I visit the "Dashboard" page
    And click on the "<tile>" tile
    Then I am on the "<page>" page

    Examples:
      | tile | page |
      | My Information | Account Information |
      | My Premises | My Premises |
      | My Meters | View Meters |
      | My Invoices | My Invoices |
      | FAQs | FAQs |
      | Moving Premises | Moving Premises |
