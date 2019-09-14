class CreateCsvFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :csv_filters do |t|
      t.string :name, null: false
      t.integer :type

      t.timestamps
    end
  end
end
