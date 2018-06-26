class AddPerformerToLives < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :performer, :string
  end
end
