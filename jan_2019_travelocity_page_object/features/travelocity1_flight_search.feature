Feature: travelocity Flight Search Functionality

  Background:
    Given user is on travelocity home page
    When user selects the flight tab
    And user clicks on the round trip flight option


    Scenario: testing the yml usage
      Then I should be able to access date from the yml file


    #   Imperative
  Scenario: Verify the user is able to search for the available future flights
    And user enter  "Columbus" in the flying from and select "Columbus, OH" from the list of airports
    And user enter "Cleveland" in the flying to and select "Cleveland, OH" from the list of airports
    And user selects future Departing date
    And user selects future arrival date
    And user clicks on the search button
    Then user should see the list of airports matching the date selected

    # Declarative
  Scenario:  verify the user is able to search for the available future flights
    And user searches for the fuutre flights with valid inputs
    Then user should see the list of airports matching the date selected

    Scenario Outline: verify the user is able to search for the available future domestic flights
      And user enter <dep_city> in the flying from and select <dep_airport> from the list of airports
      And user enter <arr_city> in the flying To and select <arr_airport> from the list of airports
      And user selects "01/02/2019" in the Departing date
      And user selects "01/03/2019" in the Departing date
      And user clicks on the search button
      Then user should see the list of airports matching the date selected

      Examples:
        | dep_city              | dep_airport |  arr_city  |  arr_airport  |
        | columbus              | Columbus,OH |  cleveland |  Cleveland,OH |
        | chicago               | Ohare, IL   |   austin   |  Austin, TX   |
        | columbus              | Columbus,OH |  cleveland |  Cleveland,OH |
        | lkfdeajkldfjfklaefj   | Columbus,OH |  cleveland |  Cleveland,OH |
        | columbus              | Columbus,OH |  cleveland |  Cleveland,OH |
        | columbus              | Columbus,OH |  cleveland |  Cleveland,OH |







