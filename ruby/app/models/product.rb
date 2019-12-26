class Product < ActiveRecord::Base

  belongs_to :shop
  has_and_belongs_to_many :carts

  validates :price, numericality: {
      greater_than: 0, allow_nil: true }
  
  after_update :actualize_cart_products

  def actualize_cart_products
    cart_products.update_all(title: title)
  end

end
