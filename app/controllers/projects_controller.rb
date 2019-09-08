# frozen_string_literal: true

class ProjectsController < ActionController::API
  def index
    @projects = Project.all

    render json: @projects
  end
end
