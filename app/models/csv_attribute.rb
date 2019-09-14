class CsvAttribute < ApplicationRecord
  belongs_to :csv_type
  has_many :csv_filters
end
