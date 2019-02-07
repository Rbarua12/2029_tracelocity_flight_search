module Utilities

  def new_date no_of_days
  #(Time.now + 60 * 60 * 24 * no_of_days).strftime(%m/%d/%y)
  (Time.now + 60 * 60 * 24 * 10).strftime("%m/%d/%y")
end

def verify_results_are_same? expected_results, actual_results
  if expected_results == actual_results
    p "PASS - #{expected_results} is same as #{actual_results}"
  else
    fail "#{expected_results} is NOT same as #{actual_results}"
  end

  expect(expected_results.should be eq actual_results)
end

end