Given(/^user is on travelocity home page$/) do
  visit TravelocityHomePage

end

When(/^user selects the flight tab$/) do
  on(TravelocityHomePage).select_flight_tab_element.when_visible.click

end


And(/^user clicks on the round trip flight option$/) do
  on(TravelocityHomePage).select_round_trip_option_element.when_visible(100).click


And(/^user enter  "([^"]*)" in the flying from and select "([^"]*)" from the list of airports$/) do |city_name, airport_name|
  on(TravelocityHomePage).set_dep_airport city_name, airport_name

end

And(/^user enter "([^"]*)" in the flying to and select "([^"]*)" from the list of airports$/) do |city_name, airport_name|
  on TravelocityHomePage.set_arr_airport city_name, airport_name

And(/^user selects (future|past) Departing date$/) do|future_past|
  if future_past == 'future'
    future_past = 2
  else
    future_past = -2
  end

  on(TravelocityHomePage).set_dep_date future_past
end


And(/^user selects (future|past)arrival date$/) do|future_past|
  if future_past == 'future'
    future_past = 2
    else
    future_past = -2
  endTravelocityHomePage
  on().set_arr_date future_past
end
end

And(/^user clicks on the search button$/) do
  on (TravelocityHomePage).search_flights_element.click
end

Then(/^user should seee the list of airports matching the date selected$/) do
  expected_welcome_message = "Select your departure to Cleveland Wed, Jan 30"
  actual_welcome_message = get_flight_results_title_element.context do
  end

  on(TravelocityHomePage).verify_flight_displayed_correctly
    expect(expected_results).should be eq actual_results
  end
end
end


And(/^user selects future arrival date$/) do
  pending
end