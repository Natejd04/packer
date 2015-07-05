class CreateHikers < ActiveRecord::Migration
  def change
    create_table :hikers do |t|
      t.string :name
      t.integer :backpack_size
      t.float :volume

      t.timestamps null: false
    end
  end
end
