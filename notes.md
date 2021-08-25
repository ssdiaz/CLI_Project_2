Hair Product contain good or bad alcohol for curly hair

#!/usr/bin/env ruby

Alcohol & Your Curls
AlcoholAndYourCurls

1. Flow
2. Classes
    2a. Class relationships

1. Flow:
Welcome to the Alcohol & Your Curls App for Ulta Beauty Online! Use this CLI App to select a product and find out if it containts a helpful or harmful alcohol for your curls. You can also add products to your CLI Wish List to view for purchasing later. 

Let's Get Started!

Select a Hair Category by typing the number in the terminal and press enter:

- User chooses Hair category
Type the number to select the Brand Name:

- User chooses Brand Name
Type the number to select the Product:

- User chooses Product
[Product_Method]
- displays if product has good or bad alcohol
- asks if user wants to Add Product to Wish list
    - user selects: y/n
        - y: Product Added! 
             Display [menu]
        - n: Display [menu]

- [menu]
    Type the number to select:
        1. View Wish list
    *maybe* <!-- 2. View Recently Viewed Products -->
        3. Return to Products
        4. Return to Brands
        5. Return to Hair Categories 

- user selects:
    1. View Wish List
        - display WL
        - *display [menu]*
        - *maybe we won't remove*
        <!-- - To remove an item, type the #, otherwise type 0 to return to the [menu]
            - user selects: #
                - confirm you want to remove #? y/n
                - item is removed.
                - display [menu]
            - user selects: 0
                - display [menu] -->
    2. View Recently Viewed Products *maybe*
        <!-- - display RVP
            - To add an item to your Wish List, type the #, otherwise type 0 to return to the [menu]
            - user selects: #
                - [Product_Method] / add to wish list?
                - display [menu] -->
    4. Return to Products
    5. Returnt to Brands
    6. Return to Hair Categories 



2. Classes -- blueprint/factory
    - CLI 
        - make sure you name space -> ModuleName::CLI
    - Scraper
    - HairCategory
        - has many: Brand
    - Brand
        - has many: Product
        - belongs to: HairCategory
    - Product
        - belongs to: Brand
        - methods: view_product (needs to call add to wish list I think; add_WL_item)
    - WishList
        - has many: Product
        - methods: display_WL, *remove_WL_item*, add_WL_item
    - *RecentlyViewedProduct* 
        <!-- - has many: Product
        - methods: display_Product, add_Product -->
    - Alcohol
        - Helpful :)
            - give a blurb about each alcohol and site source
        - Harmful :(
            - give a blurb about each alcohol and site source



Wish List, *RVP* will display as:
[[ LIST TITLE ]]
-----
# 1
Brand
prod_title
price
rating
reviews
-----
# 2
Brand
prod_title
price
rating
reviews
-----

Menu will display as:
    Type the number to select:
        1. View Wish list
        <!-- 2. View Recently Viewed Products -->
        3. Return to Products
        4. Return to Brands
        5. Return to Categories 
