# == Schema Information
#
# Table name: data_types
#
#  id   :bigint           not null, primary key
#  name :string           not null
#

class DataType < ApplicationRecord
  has_many :csv_attributes

  validates :name, presence: true
end
