class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
	  t.string :name
	  t.string :name_phonetic
	  t.string :phone_number
	  t.string :email
	  t.integer :reserve_number

      t.timestamps
    end
  end
end
