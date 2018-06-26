class AddDateToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :date, :string
  end
end
