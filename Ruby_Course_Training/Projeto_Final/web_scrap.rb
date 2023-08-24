require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
https.use_ssl = true

response = https.get("/")
if response.code == '301'
  new_location = response['location']
  new_url = URI.parse(new_location)

  new_https = Net::HTTP.new(new_url.host, new_url.port)
  new_https.use_ssl = true

  new_response = new_https.get(new_url.path)

  doc = Nokogiri::HTML(new_response.body)
end

h1 = doc.at('h1')
puts h1.content

doc.search('h3 a').each do |a|
  puts a.content
  puts a['href']
  puts ''
end