class CsvAttributesController < ApplicationController
  before_action :set_csv_attribute, only: [:show, :edit, :update, :destroy]

  # GET /csv_attributes
  # GET /csv_attributes.json
  def index
    @csv_attributes = CsvAttribute.all
  end

  # GET /csv_attributes/1
  # GET /csv_attributes/1.json
  def show
  end

  # GET /csv_attributes/new
  def new
    @project = Project.find params[:project_id]
    @csv_type = CsvType.find params[:csv_type_id]
    @csv_attribute = CsvAttribute.new(csv_type: @csv_type)
  end

  # GET /csv_attributes/1/edit
  def edit
  end

  # POST /csv_attributes
  # POST /csv_attributes.json
  def create
    @csv_attribute = CsvAttribute.new(csv_attribute_params)

    respond_to do |format|
      if @csv_attribute.save
        format.html { redirect_to project_csv_type_csv_attributes_path(@csv_attribute.csv_type.project, @csv_attribute.csv_type), notice: 'Csv type was successfully created.' }

        format.json { render :show, status: :created, location: @csv_attribute }
      else
        format.html { render :new }
        format.json { render json: @csv_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csv_attributes/1
  # PATCH/PUT /csv_attributes/1.json
  def update
    respond_to do |format|
      if @csv_attribute.update(csv_attribute_params)
        format.html { redirect_to @csv_attribute, notice: 'Csv attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @csv_attribute }
      else
        format.html { render :edit }
        format.json { render json: @csv_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csv_attributes/1
  # DELETE /csv_attributes/1.json
  def destroy
    @csv_attribute.destroy
    respond_to do |format|
      format.html { redirect_to project_csv_type_csv_attributes_url, notice: 'Csv attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csv_attribute
      @csv_attribute = CsvAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csv_attribute_params
      params.require(:csv_attribute).permit(:name, :csv_type_id)
    end
end
