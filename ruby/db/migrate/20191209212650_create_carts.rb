class CreateCarts < ActiveRecord::Migration[5.1]
  def up
    create_table :carts do |t|
      t.integer     :user
      t.belongs_to  :user
    end
  end

    def down
      drop_table :carts
    end
end
