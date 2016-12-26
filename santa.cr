require "json"
require "http/client"

URL = "https://cdn.rawgit.com/veelenga/santa/master/happy_new_year.json"

language = ARGV[0]?
codes = JSON.parse HTTP::Client.get(URL).body
result = codes[language]? if language
puts result || codes["eng"]
