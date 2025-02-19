class RemoveIncorrectTable < ActiveRecord::Migration[7.2]
  def up
    drop_table :category_produccts
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
