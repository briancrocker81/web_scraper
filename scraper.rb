require 'httparty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

page = HTTParty.get('http://southdevon.ac.uk')
# page = HTTParty.get('http://radium-audio.com')

Pry.start(binding)
