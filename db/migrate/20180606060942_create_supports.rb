class CreateSupports < ActiveRecord::Migration[5.2]
  def change
    create_table :supports do |t|
	  t.integer :performer_id


      t.timestamps
    end
  end
end
