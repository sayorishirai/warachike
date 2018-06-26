class AddTimeToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :time, :string
  end
end
