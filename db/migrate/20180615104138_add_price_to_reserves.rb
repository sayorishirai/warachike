class AddPriceToReserves < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :price, :integer
  end
end
