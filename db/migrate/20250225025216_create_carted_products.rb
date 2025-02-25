class CreateCartedProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :carted_products do |t|
      t.string :product_id
      t.string :order_id
      t.string :quantity
      t.string :status

      t.timestamps
    end
  end
end
