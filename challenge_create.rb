# Name: Na Feng
# Date: Jan. 26

load 'ar.rb'

# Method One: Create a Product in "object space".
new_product = Product.new

# Set the required properties.
new_product.name = "Milk"
new_product.description = "2 L"
new_product.price = "5.6"
new_product.stock_quantity = "13"

# Calling save on the object will persist it to the products table.
new_product.save

# Method Two: Create a Product in "object space"
# Set the required properties as key/value arguments of the new method.
tomato = Product.new( name: "Tomato",
                      description: "6 - 250 g pkgs.",
                      price: "7",
                      stock_quantity: "20")

# Calling save on the object will persist it to the products table.
tomato.save

# Method Three: Create the object and persist it all at once.
pepsi = Product.create( name: "Pepsi",
                        description: "12 - 355 ml cans",
                        price: "14.5",
                        stock_quantity: "100")

# Create a Product object that is missing some required columns.
pen = Product.new( name: "Pen")

# Attempt to save this product and print all the AR errors which are generated.
if (pen.save)
  puts "Pen was saved to the database products table."
  puts pen.inspect
else
  puts "There was an error saving pen to the database."

  # Loop through all the validation errors.
  pen.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end
