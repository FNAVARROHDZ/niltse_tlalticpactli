@web @duckduckgo
Feature: DuckDuckGo Web Browsing
  As a web surfer,
  I want to find information online,
  So I can learn new things and get tasks done.


  Background:
    Given the DuckDuckGo home page is displayed


  Scenario: Basic DuckDuckGo Search
    When the user searches for "chimpance"
    Then results are shown for "chimpance"


  Scenario: Lengthy DuckDuckGo Search
    When the user searches for the phrase:
      """
      Ica xon ahuiyacan ihuinti xochitli, tomac mani, aya. Ma on te ya aquiloto xochicozquitl.
      In toquiappancaxochiuh, tla celia xochitli,cueponia xochitli.
      """
    Then one of the results contains "Nezahualcóyotl"
