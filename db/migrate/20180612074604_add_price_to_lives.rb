class AddPriceToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :price, :string
  end
end
