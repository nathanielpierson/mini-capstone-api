class AddUserIDtoCartedProducts < ActiveRecord::Migration[7.2]
  add_column :carted_products, :user_id, :integer
  def change
  end
end
