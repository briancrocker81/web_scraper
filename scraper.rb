require 'nokogiri'
require 'open-uri'

puts "Enter the URL you'd like to scrape"

url = gets.chomp

page = Nokogiri::HTML(open(url))
# page = Nokogiri::HTML(open('http://www.fabulousfarmshops.co.uk/devon.html'))

selector = "//a[starts-with(@href, \"mailto:\")]/@href"

nodes = page.xpath selector

addresses = nodes.collect {|n| n.value[7..-1]}

puts addresses.uniq
