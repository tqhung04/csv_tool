class ChangeColumnInCsvFilter < ActiveRecord::Migration[5.2]
  def change
    rename_column :csv_operators, :type, :kind
  end
end
