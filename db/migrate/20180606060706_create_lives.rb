class CreateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :lives do |t|
	  t.integer :theater_id
	  t.integer :reserve_id

      t.timestamps
    end
  end
end
