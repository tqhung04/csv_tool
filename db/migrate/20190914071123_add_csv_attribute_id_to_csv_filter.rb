class AddCsvAttributeIdToCsvFilter < ActiveRecord::Migration[5.2]
  def change
    add_reference :csv_filters, :csv_attribute, foreign_key: true
  end
end
