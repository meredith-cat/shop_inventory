# shop_inventory

Brief: Build an app which allows a shopkeeper to track their shop’s inventory.
The app should track individual products and allow these to be added, edited and deleted from the system.
The app should track manufacturers.
The app should show all inventory in a single view and hilight low stock.
The app should calculate markup.
Users should be able to filter the products by type and manufacturers.

Project Notes:
Having worked in ecommerce I was familiar with some inventory management systems such as Amazon Seller Central, Shopify and Rakuten Smartfill. I wanted to explore the functionality of these systems.

This project allowed me to develop my understanding of Ruby, SQL and RESTful routes.
Each class in my project has CRUD functionality which was a focus for this section of the course.

![Inventory Management Screen](/images/inventory_page.png)

I chose to style my project after low-resolution pixel art games & themed my inventory around fantasy potions.

Assets:
Background Image [OpenGameArt](https://opengameart.org/content/backgrounds-3)
Pixels [Itch.io](https://tfonez.itch.io/pixel-assets)

Technologies Used: Ruby, Sinatra, HTML, CSS, Atom

Running Instructions:
1. createdb potion_shop
2. psql -d potion_shop -f db/potion_shop.sql
3. ruby db/seeds.rb
4. ruby app.rb
