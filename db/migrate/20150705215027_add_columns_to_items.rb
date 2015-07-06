rclass AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :name, :string
    add_column :items, :weight, :float
    add_column :items, :volume, :float
    add_column :items, :owner_id, :integer
    add_column :items, :pack_id, :integer
  end
end
end