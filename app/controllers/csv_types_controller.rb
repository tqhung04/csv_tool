class CsvTypesController < ApplicationController
  before_action :set_csv_type, only: [:show, :edit, :update, :destroy]

  # GET /csv_types
  # GET /csv_types.json
  def index
    # @csv_types = if params[:project_id].present?
    #   project = Project.find_by(id: params[:project_id])
    #   project.csv_types
    # else
    @csv_types = CsvType.all
  end

  # GET /csv_types/1
  # GET /csv_types/1.json
  def show
  end

  # GET /csv_types/new
  def new
    @project = Project.find params[:project_id]
    @csv_type = CsvType.new(project: @project)
  end

  # GET /csv_types/1/edit
  def edit
  end

  # POST /csv_types
  # POST /csv_types.json
  def create
    @csv_type = CsvType.new(csv_type_params)

    respond_to do |format|
      if @csv_type.save
        format.html { redirect_to project_csv_types_path(@csv_type.project, @csv_type), notice: 'Csv type was successfully created.' }
        format.json { render :show, status: :created, location: @csv_type }
      else
        format.html { render :new }
        format.json { render json: @csv_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csv_types/1
  # PATCH/PUT /csv_types/1.json
  def update
    respond_to do |format|
      if @csv_type.update(csv_type_params)
        format.html { redirect_to @csv_type, notice: 'Csv type was successfully updated.' }
        format.json { render :show, status: :ok, location: @csv_type }
      else
        format.html { render :edit }
        format.json { render json: @csv_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csv_types/1
  # DELETE /csv_types/1.json
  def destroy
    @csv_type.destroy
    respond_to do |format|
      format.html { redirect_to csv_types_url, notice: 'Csv type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csv_type
      @csv_type = CsvType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csv_type_params
      params.require(:csv_type).permit(:name, :project_id)
    end
end
