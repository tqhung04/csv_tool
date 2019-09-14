class DropTableCsvAttributeFilter < ActiveRecord::Migration[5.2]
  def change
    drop_table :csv_attribute_filters
  end
end
