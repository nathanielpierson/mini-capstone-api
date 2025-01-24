class AddImageId < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :image_id, :integer
  end
end
