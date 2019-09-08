# frozen_string_literal: true

class CsvModelsController < ActionController::API
  def index
    @csv_models = CsvModel.all

    render json: @csv_models
  end
end
