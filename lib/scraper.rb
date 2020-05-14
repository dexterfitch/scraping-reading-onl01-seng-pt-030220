require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
puts doc.css(".headline-26OIBN").text

courses = doc.css(".gridContainer-EnvccM .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC .title-oE5vT4")
puts courses
courses.each do |course|
  puts course.text.strip
end
