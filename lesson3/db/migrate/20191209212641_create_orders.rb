class CreateOrders < ActiveRecord::Migration[5.1]
  def up
    create_table :orders do |t|
      t.integer :user
      t.belongs_to :user
    end
  end

  def down
    drop_table :orders
  end
end
