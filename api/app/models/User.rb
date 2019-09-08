# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#  email    :string           not null
#  password :string           not null
#

class User < ApplicationRecord
  validates :username, :email, :password, presence: true
end
