class CreateCsvTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :csv_types do |t|
      t.string :name, null: false
      t.references :project, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
