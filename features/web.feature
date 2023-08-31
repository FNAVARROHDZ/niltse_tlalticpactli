Feature: DuckDuckGo Search
  As a user of DuckDuckGo
  I want to search for information
  So that I can find what I am looking for

  Scenario: Search for information
    Given I am on the DuckDuckGo homepage
    When I enter "gherkin test case" into the search box
    And I click the search button
    Then I should see a list of search results

