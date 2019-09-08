# == Schema Information
#
# Table name: csv_attributes
#
#  id           :bigint           not null, primary key
#  name         :string           not null
#  sequence     :integer
#  csv_model_id :bigint           not null
#  data_type_id :bigint           not null
#

class CsvAttribute < ApplicationRecord
  belongs_to :csv_model
  belongs_to :data_type

  validates :name, presence: true
end
