# frozen_string_literal: true

class FiltersController < ActionController::API
  def index
    @filters = Filter.all

    render json: @filters
  end
end
