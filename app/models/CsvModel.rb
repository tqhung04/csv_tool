# == Schema Information
#
# Table name: csv_models
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  sequence   :integer
#  project_id :bigint           not null
#

class CsvModel < ApplicationRecord
  belongs_to :project
  has_many :csv_attributes

  validates :name, presence: true
end
