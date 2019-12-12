class User < ActiveRecord::Base
  has_one  :cart
  has_many :orders
  validates :name, :login, :email, presence: true
end
