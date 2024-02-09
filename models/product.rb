# Name: Na Feng
# Date: Jan. 26

class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category

  # Product id, name, description, proce, stock_quantity, category_id, created_at, updated_at
  # Based on what I find, I think product will association with the category table.

  # Add validation
  validates :name, :description, :price, :stock_quantity, presence: true
  validates :name, uniqueness: true, length: {minimum: 3}
end
