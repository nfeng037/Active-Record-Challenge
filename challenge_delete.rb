# Name: Na Feng
# Date: Jan. 26

load 'ar.rb'

# Find a product in products table.
milk = Product.where(:name => 'milk').first

puts milk.inspect

# Delete the product
milk.destroy unless milk.nil?

puts milk.inspect
