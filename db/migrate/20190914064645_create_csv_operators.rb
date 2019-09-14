class CreateCsvOperators < ActiveRecord::Migration[5.2]
  def change
    create_table :csv_operators do |t|
      t.integer :type, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
