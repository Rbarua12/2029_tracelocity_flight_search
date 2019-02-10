require 'rspec'
require 'page-object'
require 'data_magic'

$url = 'www.travelocity.com'
$browser = :chrome




World(PageObject::PageFactory)
