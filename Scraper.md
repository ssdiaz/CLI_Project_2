require 'nokogiri'
require 'open-uri'

#note: creates bundle @ 23 min

site = "https://www.ulta.com/promotion/sale"

doc = Nokogiri::HTML(open(site))

prod_title = doc.css("h4.prod-title a")
    # prod_title.each do |i|
    #     puts i.text.strip #or lstrip
    # end
rating = doc.css("div.rating-wrap span.stars-active") #may not use
    # rating.each do |i|
    #     puts i.count
    # end

prod_desc = doc.css("p.prod-desc a") #need to iterate below: 
    # prod_desc.each do |i|
    #     puts i.text.strip!
    # end

price_new = doc.css("span.pro-new-price") #need to iterate below: 
    # price_new.each do |i|
    #     puts i.text.strip!
    # end


price_old = doc.css("span.pro-old-price") #need to iterate below: 
    # price_old.each do |i|
    #     puts i.text.strip!
    # end





# things.each do |thing|
#   detail_one = thing.css("css-query").text
#   detail_two = thing.css("css-query").attr("href")
#   detail_three = thing.css("css-query").text.strip
#   # For testing purposes we can print it straight to our console
#   # But in our real app we'll want to make a new object with the data eg:
#   # Thing.new(detail_one, detail_two, detail_three)
#   puts detail_one, detail_two, detail_three, ""
# end















#promotion_item_last = doc.css("div.special-offer.last li")




# promotion_item_raw = doc.css("div.special-offer li a").css("a") 
# same as: promotion_item_raw = doc.css("div.special-offer li a")
# promotion_item_text = doc.css("div.special-offer li").css("a")#.text.strip
# #puts promotion_item_text
# promotion_item_last = doc.css("div.special-offer.last li")

# puts promotion_item







# ** ITEM NAME: i.text.strip ||  promotion_item_text = doc.css("div.special-offer li").css("a").text.strip
# ** PROMOTION, minus first 2: css("span.offer-price").text.strip
# ** URL: .attr("href")


#promotion_item = doc.css("div.special-offer li").css("p.class validity")



# To get Validility: [[confirmed]]
    # promotion_item = doc.css("div.special-offer li")
    # promotion_item.each do |i|
    #     puts i.css("p.validity").text.strip
    #   end

# To get Offer Price:  [[confirmed]]
    # promotion_item = doc.css("div.special-offer li")
    # promotion_item.each do |i|
    #     puts i.css("span.offer-price").text.strip
    # end


# things.each do |thing|
#   detail_one = thing.css("css-query").text
#   detail_two = thing.css("css-query").attr("href")
#   detail_three = thing.css("css-query").text.strip
#   # For testing purposes we can print it straight to our console
#   # But in our real app we'll want to make a new object with the data eg:
#   # Thing.new(detail_one, detail_two, detail_three)
#   puts detail_one, detail_two, detail_three, ""
# end
