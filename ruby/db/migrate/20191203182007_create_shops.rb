class CreateShops < ActiveRecord::Migration[5.1]

  def up
    create_table :shops do |t|
      t.string :domain
      t.string :name
      t.string :adress
      t.boolean :is_open
      t.integer :staff_count
    end
  end

  def down
    drop_table :shops
  end

end
