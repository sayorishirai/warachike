class AddTheaterToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :theater, :string
  end
end
