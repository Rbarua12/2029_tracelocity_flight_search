

Then(/^I should be able to access date from the yml file$/) do
  @file = YAML.load_file 'C:\projects\2029 travelocity_flight_search\test_data.yml'
  p @file.fetch('request')
  p @file['content']['session']
  p @file['content']['company']





end
