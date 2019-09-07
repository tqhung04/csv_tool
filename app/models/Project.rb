# == Schema Information
#
# Table name: projects
#
#  id   :bigint           not null, primary key
#  name :string           not null
#

class Project < ApplicationRecord
  has_many :csv_models

  validates :name, presence: true
end
