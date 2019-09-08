class CreateCsvAttributeTable < ActiveRecord::Migration[6.0]
  def change
    create_table :csv_attributes do |t|
      t.string :name, null: false
      t.integer :sequence
      t.references :csv_model, index: true, foreign_key: true, null: false
      t.references :data_type, index: true, foreign_key: true, null: false
    end
  end
end
