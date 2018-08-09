require "http/client"
require "json"


response = HTTP::Client.get "http://now.httpbin.org" # "http://httpbin.org/ip"
puts response.body

s = response.body

val = JSON.parse(s)

puts val
# puts val["origin"]
puts val["now"]["rfc2822"]

