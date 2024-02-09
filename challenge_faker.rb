# Name: Na Feng
# Date: Jan. 26

load 'ar.rb'

10.times do
  faker_category = Category.create( name: Faker::Commerce.department)

  10.times do
    faker_category.products.create( name: Faker::Commerce.product_name,
                                    description: Faker::Commerce.material,
                                    price: Faker::Commerce.price,
                                    stock_quantity: Faker::Number.between(from: 1, to: 100))
  end
end
