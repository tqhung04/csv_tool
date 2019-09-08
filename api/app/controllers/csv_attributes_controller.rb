# frozen_string_literal: true

class CsvAttributesController < ActionController::API
  def index
    @csv_attributes = CsvAttribute.all

    render json: @csv_attributes
  end
end
