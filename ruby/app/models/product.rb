class Product < ActiveRecord::Base

  belongs_to :shop
  has_and_belongs_to_many :carts

  validates :price, numericality: {
      greater_than: 0, allow_nil: true }
  
  after_create { ProductMailer.new_product_created(self).deliver }

end
