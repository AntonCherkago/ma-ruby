require './config/initializers/database'
Dir["./app/models*.rb"].each {|file| require file }

shop = Shop.new(
  domain:     'allo.ua',
  name:       'Allo',
  address:    'Kyiv',
  is_open:     true,
  staff_count: 270)

shop.save

product = Product.create(
    title: 'MI-9',
    price: '9000',
    shop:   shop )

product.save

