class AddSeetsToReserves < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :seets, :integer
  end
end
