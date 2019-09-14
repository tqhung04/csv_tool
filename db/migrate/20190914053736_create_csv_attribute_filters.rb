class CreateCsvAttributeFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :csv_attribute_filters do |t|
      t.references :csv_filter, index: true, foreign_key: true, null: false
      t.references :csv_attribute, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
