# Name: Na Feng
# Date: Jan. 26

load 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

# To load-up all rows from product table
all_pruducts = Product.all

# one of product from the database
puts "The first product is #{all_pruducts[2].inspect}"

# First product
first_product = Product.first
puts "The name of first product is #{first_product.name}."

# Total number of product
puts "There are #{all_pruducts.size} products."

# The names of all products above $10 with names that begin with the letter C.
product_with_name_price = Product.where('name LIKE "C%" AND price > 10')

product_with_name_price.each do |product|
  puts "Name: #{product.name}, Price: #{product.price}"
end

# The products with a low stock quantity. (Low is defined as less than 5 in stock.)
product_low_stock = Product.where("stock_quantity < 5")

# Total number of products with a low stock quantity.
puts "There are #{product_low_stock.size} with a low stock quantity."

# Find the name of the category
puts "#{first_product.category.name}"

# Use an existing Category object to bulid a new product
beverage = Category.where(:name => 'Beverages').first
new_one = beverage.products.build( name: "Coca Cola",
                                   description: "12 -550 ml bottles",
                                   price: "12",
                                   stock_quantity: "78")
new_one.save

puts new_one.inspect

# Find a specific category and then use it to locate all the the associated products over a certain price.
high_price_beverage = beverage.products.where("price > 50")

high_price_beverage.each { |h| puts h.name }
