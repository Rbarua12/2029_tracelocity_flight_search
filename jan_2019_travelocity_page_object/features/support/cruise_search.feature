Feature: travelocity cruise Search Functionality

  Background:
    Given user is on travelocity home page
    When user selects the cruise tab
    And user clicks on the round trip cruise option


    #   Imperative
  Scenario: Verify the user is able to search for the available future cruise
    And user enter  "Columbus" in the flying from and select "Columbus, OH" from the list of airports
    And user enter "Cleveland" in the flying to and select "Cleveland, OH" from the list of airports
    And user selects future Departing date
    And user selects future arrival date
    And user clicks on the search button
    Then user should see the list of airports matching the date selected

