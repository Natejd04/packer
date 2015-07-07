class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.string :name
      t.integer :qty

      t.timestamps null: false
    end
  end
end
