require 'open-uri'
require 'nokogiri'

def crypto_scrap_nom
  array1 = Array.new
  page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
  page.css("tbody").css("tr").css(".currency-name-container").each do |nom|
    noms = nom.inner_text
    array1.push(noms)
  end
  array1
end

def crypto_scrap_cours
  array2 = Array.new
  page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
  page.css("tbody").css("tr").css("td[9]").each do |cour|
    cours = cour.inner_text
    array2.push(cours)
  end
  array2
end


# si tu fais tourner (avec des puts def) ca te donne la liste des monnais et la deuxieme methodes leurs cours
# il me reste a ziper les 2 array dans un Hash, pas sur d'avoir le temps ! <3
