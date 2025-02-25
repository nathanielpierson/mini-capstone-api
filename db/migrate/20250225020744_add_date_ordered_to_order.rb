class AddDateOrderedToOrder < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :date_ordered, :string
    add_column :orders, :status, :string
  end
end
