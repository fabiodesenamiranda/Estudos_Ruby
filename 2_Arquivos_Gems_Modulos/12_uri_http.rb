require 'uri'
require 'net/http'

url = URI.parse('http://www.rubyinside.com/test.txt')

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = (url.scheme == 'https')

request = Net::HTTP::Get.new(url.path)

response = http.request(request)

if response.is_a?(Net::HTTPSuccess)
  puts "status: #{response.code}"
  puts response.body
else
  puts "Request failed: #{response.message}"
end