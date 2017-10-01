class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.jsonb :attributes, null: false, default: '{}'
      t.string :type
      t.timestamps
    end
  end
end
