require 'open-uri'
require 'httparty'
require 'json'

response = HTTParty.get("https://api.github.com/zen").to_s

rm_dot = response[0..-2]

shuffled_words = rm_dot.split(" ").shuffle

