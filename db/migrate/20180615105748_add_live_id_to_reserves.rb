class AddLiveIdToReserves < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :live_id, :integer
  end
end
