class AddMembernameToPerfoermers < ActiveRecord::Migration[5.2]
  def change
    add_column :performers, :membername, :string
  end
end
