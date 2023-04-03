@web @duckduckgo
Feature: DuckDuckGo Web Browsing
  As a web surfer,
  I want to find information online,
  So I can learn new things and get tasks done.


  Background:
    Given the DuckDuckGo home page is displayed


  Scenario: Basic DuckDuckGo Search
    When the user searches for "elephant"
    Then results are shown for "elephant"


  Scenario: Lengthy DuckDuckGo Search
    When the user searches for the phrase:
      """
      Ica xon ahuiyacan ihuinti xochitli, tomac mani, aya. Ma on te ya aquiloto xochicozquitl.
      In toquiappancaxochiuh, tla celia xochitli,cueponia xochitli.
      Oncan nemi tototl, chachalaca, tlatohua, hahaya hual on quimatli teotl ichan, ohuaya, ohuaya
      Zaniyo in toxochiuhica ica tonahuiyacan. Zaniyo in cuicatl, aya icaon pupulihui in amotlaocol.
      In tepilhuan ica yehua, amelel on quiza, ohuaya, ohuaya Quiyocoya in Ipalnemohua,
      aya qui ya hualtemohuiya moyocoyatzin, in ayahuailo xochitli, ica yehua amelel on quiza.
      """
    Then one of the results contains "ahuiyacan"