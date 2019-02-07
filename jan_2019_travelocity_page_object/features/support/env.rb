require 'rspec'
require 'page-object'
require 'data_magic'

include PageObject

ENV['browser'] = 'chrome'
$qa_url = 'www.qa.orbitz.com'


World(PageObject::PageFactory)
