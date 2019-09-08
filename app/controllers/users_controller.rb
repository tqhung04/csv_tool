# frozen_string_literal: true

class UsersController < ActionController::API
  def index
    @users = User.all

    render json: @users
  end
end
