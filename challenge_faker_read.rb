# Name: Na Feng
# Date: Jan. 26

load 'ar.rb'

all_categories = Category.all

all_categories.each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "Product: #{product.name}, Price: #{product.price}"
  end
  puts "\n"
end
