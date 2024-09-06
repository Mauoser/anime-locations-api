require 'nokogiri'
require 'httparty'

url = 'https://japantour.xyz/2019/11/27/weathering-with-you-real-life-locations-in-tokyo-tenki-no-ko/'
response = HTTParty.get(url, headers: { 'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' })

if response.code == 200
  # Parse the HTML content using Nokogiri
  doc = Nokogiri::HTML(response.body)

  # Collect all <h2> and <img> elements
  elements = doc.css('h2, img')

  # Iterate through the collected elements and print their content
  elements.each do |element|
    if element.name == 'h2'
      puts "H2: #{element.text.strip}"
    elsif element.name == 'img'
      img_url = element['src']
      puts "Image URL: #{img_url}"
    end
  end
else
  # Print an error message if the request failed
  puts "Failed to retrieve the page. Response code: #{response.code}"
end
