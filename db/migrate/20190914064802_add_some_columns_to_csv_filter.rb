class AddSomeColumnsToCsvFilter < ActiveRecord::Migration[5.2]
  def change
    add_reference :csv_filters, :csv_operator, foreign_key: true
    add_column :csv_filters, :before_value, :string
    add_column :csv_filters, :compare_value, :string
    add_column :csv_filters, :after_value, :string
  end
end
