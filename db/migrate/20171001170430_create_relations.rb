class CreateRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :relations do |t|
      t.integer :target_id
      t.integer :item_id
      t.integer :collection_id
      t.timestamps
    end
  end
end
