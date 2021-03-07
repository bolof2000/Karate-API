Feature: Tests for the home Page


  Background: Define URL
    Given url 'https://conduit.productionready.io/api/'

  Scenario: Get all Tags
    Given path 'tags'
    When method Get
    Then status 200
    And match response.tags contains 'Gandhi'
    And match response.tags !contains 'bolof'
    And match response.tags contains ['HITLER','Black‌Lives‌Matter']


  Scenario: Get 10 articles from the page 
    Given params {limit:10,offset:0}
    Given path 'articles'
    When method Get
    Then status 200

