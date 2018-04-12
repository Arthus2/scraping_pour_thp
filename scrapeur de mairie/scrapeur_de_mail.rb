require 'open-uri'
require 'nokogiri'

def get_all_the_urls_of_val_doise_townhalls
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  fin = Array.new
  page.css(".lientxt[href]").each do |url|
    urls = url['href']
    fin.push ("http://annuaire-des-mairies.com#{urls}")
  end
  fin
end

def get_the_email_of_a_townhal_from_its_webpage(page_url)
  page = Nokogiri::HTML(open(page_url))
  puts page.css('tr')[4].css('td')[1]
end

array_url = get_all_the_urls_of_val_doise_townhalls()
array_url.each do |url|
  puts get_the_email_of_a_townhal_from_its_webpage(url)
end

=begin
meme boucle avec while
 i = 0
 while i < array_url.length
   url = get_all_the_urls_of_val_doise_townhalls
   puts get_the_email_of_a_townhal_from_its_webpage(url[i])
   i+=1
 end
=end

#pas eu le temps de ranger les choses proprement dans un hash, prochaine etape !
