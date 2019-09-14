class CreateCsvAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :csv_attributes do |t|
      t.string :name, null: false
      t.references :csv_type, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
