require 'open-uri'
require 'nokogiri'

def get_all_the_urls_of_val_doise_townhalls
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  page.css(".lientxt[href]").each do |urls|
  puts urls['href']
  end
end

puts get_all_the_urls_of_val_doise_townhalls
