require 'nokogiri'
require 'open-uri'

#note: creates bundle @ 23 min

site_categories = "https://www.ulta.com/hair?N=26wz"
site = "https://www.ulta.com/hair-shampoo-conditioner?N=27ih"

doc_categories = Nokogiri::HTML(open(site_categories))
doc = Nokogiri::HTML(open(site))

category = doc_categories.css("li.cat-sub-nav a")
    # category.each do |i|
    #     puts i.text.strip
    # end
    
prod_title = doc.css("h4.prod-title a")
    # prod_title.each do |i|
    #     puts i.text.strip #or lstrip
    # end

rating = doc.css("label.sr-only").first.text #may not use
    #puts rating

prod_desc = doc.css("p.prod-desc a") #need to iterate below: 
    # prod_desc.each do |i|
    #   puts i.text.strip!
    # end

reviews = doc.css("span.prodCellReview a").text.strip
#puts reviews

price = doc.css("span.regPrice") #need to iterate below: 
    # price.each do |i|
    #     puts i.text.strip!
    # end

url = doc_categories.css("li.cat-sub-nav a href")
    url.each do |i|
        puts i.attr("href")
    end


# price_new = doc.css("span.pro-new-price") #need to iterate below: 
#     price_new.each do |i|
#       puts i.text.strip!
#     end

# price_old = doc.css("span.pro-old-price") #need to iterate below: 
#     price_old.each do |i|
#         puts i.text.strip!
#     end

# offer = doc.css("div.product-detail-offers p").text #need to iterate below: 
#     offer.each do |i|
#         puts i.text.strip!
#     end
# puts offer



# things.each do |thing|
#   detail_one = thing.css("css-query").text
#   detail_two = thing.css("css-query").attr("href")
#   detail_three = thing.css("css-query").text.strip
#   # For testing purposes we can print it straight to our console
#   # But in our real app we'll want to make a new object with the data eg:
#   # Thing.new(detail_one, detail_two, detail_three)
#   puts detail_one, detail_two, detail_three, ""
# end
