# Name: Na Feng
# Date: Jan. 26

load 'ar.rb'

# Find all products with a stock quantity greater than 40.
stock_greater = Product.where("stock_quantity > 40")

# Add one to the stock quantity of each of these products and then save these changes to the database.
stock_greater.each do |s|
  s.stock_quantity += 1
  s.save
end
