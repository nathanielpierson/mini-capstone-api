class DidTheWrongThing < ActiveRecord::Migration[7.2]
  def change
    remove_column :products, :image_id, :integer
  end
end
