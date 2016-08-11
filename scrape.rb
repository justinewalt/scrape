require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'
require 'mechanize'
PAGE_URL = 'https://www.special-learning.com/schools/1'

page = HTTParty.get(PAGE_URL)
# page = Nokogiri::HTML(open(PAGE_URL))
# puts page.class

parse_page = Nokogiri::HTML(page)

headings_array = []

# heading_elements = parse_page.css('tr.sed').css('td').css('table').css('td')
details = parse_page.css('tr.sed').css('td').css('table').css('body').css('tr').css('td')

binding.pry
# parse_page.css('tr.sed').css('td').css('table').css('.field-label') << schools_array

puts details.text
# puts heading_elements.text
# heading_elements.each_with_index do |heading_elements, index|
# 	if index === 0
# 	headings_array << heading_elements.text
# 	puts headings_array
# end
# parse_page.css('tr.sed').css('td').css('table').css('.field-label')