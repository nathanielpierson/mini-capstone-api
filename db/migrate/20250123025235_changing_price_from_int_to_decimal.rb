class ChangingPriceFromIntToDecimal < ActiveRecord::Migration[7.2]
  change_column :products, :price, :decimal
  def change
  end
end
