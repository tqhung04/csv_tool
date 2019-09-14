class CsvType < ApplicationRecord
  belongs_to :project
  has_many :csv_attributes
end
