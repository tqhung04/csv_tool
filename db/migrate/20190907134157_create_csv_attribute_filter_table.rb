class CreateCsvAttributeFilterTable < ActiveRecord::Migration[6.0]
  def change
    create_table :csv_attribute_filters do |t|
      t.integer :sequence
      t.references :filter, index: true, foreign_key: true, null: false
      t.references :csv_attribute, index: true, foreign_key: true, null: false
    end
  end
end
