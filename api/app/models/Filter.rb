# == Schema Information
#
# Table name: filters
#
#  id          :bigint           not null, primary key
#  filter_kind :integer          not null
#

class Filter < ApplicationRecord
  enum filter_kind: [:gsub, :condition, :replace]

  validates :filter_kind, presence: true
end
