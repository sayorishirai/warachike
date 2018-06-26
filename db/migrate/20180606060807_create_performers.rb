class CreatePerformers < ActiveRecord::Migration[5.2]
  def change
    create_table :performers do |t|
	  t.string :group_name
	  t.string :member_name
	  t.integer :genre_id
	  t.integer :live_id

      t.timestamps
    end
  end
end
