# == Schema Information
#
# Table name: csv_attribute_filters
#
#  id               :bigint           not null, primary key
#  sequence         :integer
#  filter_id        :bigint           not null
#  csv_attribute_id :bigint           not null
#

class CsvAttributeFilter < ApplicationRecord
  belongs_to :filter
  belongs_to :csv_attribute
end
