class RenameColumnUserToStringCreateOrders < ActiveRecord::Migration[5.1]
  def up
    change_column :orders, :user, :string
  end

  def down
    change_column :orders, :user, :integer
  end
end
