Feature: DuckDuckGo Search
  As a user of DuckDuckGo
  I want to search for information
  So that I can find what I am looking for

  Scenario: Search for information
    Given the DuckDuckGo home page is displayed
    When the user searches for "gherkin test case"
    Then results are shown for "gherkin test case"

