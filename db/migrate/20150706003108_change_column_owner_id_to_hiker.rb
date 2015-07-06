class ChangeColumnOwnerIdToHiker < ActiveRecord::Migration
  def change
      rename_column :items, :owner_id, :hiker_id
  end
end
