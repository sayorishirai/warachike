class AddDetailToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :detail, :string
  end
end
