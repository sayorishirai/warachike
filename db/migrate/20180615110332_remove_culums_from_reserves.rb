class RemoveCulumsFromReserves < ActiveRecord::Migration[5.2]
  def change
    remove_column :reserves, :reserve_number, :integer
    remove_column :reserves, :name_phonetic, :string
  end
end
