class CreatePerformerGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :performer_genres do |t|
	  t.integer :performer_id
	  t.integer :genre_id

      t.timestamps
    end
  end
end
