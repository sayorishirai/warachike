class AddNameToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :name, :string
  end
end
