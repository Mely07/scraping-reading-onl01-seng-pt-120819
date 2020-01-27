require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html) #Nokogiri::HTML(html) -- method used to take the string of HTML returned by open-uri's open method method and convert it into a NodeSet(a bunch of nested "nodes")
#Nested nodes refers to any tree of elements in which parent elements branch off to contain children elements. In fact, we've seen similarly nested structures before when we dealt with nested data structures like hashes. By creating a nested structure, Nokogiri allows us to do things like iterate over a collection of elements from the HTML document and use brackets,[], and dot notation to access elements within the nested structure.

puts doc.css(".headline-26OIBN").text

doc = Nokogiri::HTML(html)
 
doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")