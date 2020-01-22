class ChangeUserToBeStringInCarts < ActiveRecord::Migration[5.1]
  def up
    change_column :carts, :user, :string
  end

  def down
    change_column :carts, :user, :integer
  end
end
