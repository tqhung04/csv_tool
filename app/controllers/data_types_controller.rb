# frozen_string_literal: true

class DataTypesController < ActionController::API
  def index
    @data_types = DataType.all

    render json: @data_types
  end
end
