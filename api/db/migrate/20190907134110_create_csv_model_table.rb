class CreateCsvModelTable < ActiveRecord::Migration[6.0]
  def change
    create_table :csv_models do |t|
      t.string :name, null: false
      t.integer :sequence
      t.references :project, index: true, foreign_key: true, null: false
    end
  end
end
