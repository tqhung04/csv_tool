class CsvFilter < ApplicationRecord
  belongs_to :csv_attribute
  belongs_to :csv_operator
end
