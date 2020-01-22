class CreateCartsProducts < ActiveRecord::Migration[5.1]
  def up
    create_table :carts_products, id: false do |t|
      t.integer :cart_id
      t.integer :product_id
    end
  end

  def down
    drop_table :carts_products
  end
end
