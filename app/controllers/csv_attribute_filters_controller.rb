class CsvAttributeFiltersController < ApplicationController
  before_action :set_csv_attribute_filter, only: [:show, :edit, :update, :destroy]

  # GET /csv_attribute_filters
  # GET /csv_attribute_filters.json
  def index
    @csv_attribute_filters = CsvAttributeFilter.all
  end

  # GET /csv_attribute_filters/1
  # GET /csv_attribute_filters/1.json
  def show
  end

  # GET /csv_attribute_filters/new
  def new
    @csv_attribute_filter = CsvAttributeFilter.new
  end

  # GET /csv_attribute_filters/1/edit
  def edit
  end

  # POST /csv_attribute_filters
  # POST /csv_attribute_filters.json
  def create
    @csv_attribute_filter = CsvAttributeFilter.new(csv_attribute_filter_params)

    respond_to do |format|
      if @csv_attribute_filter.save
        format.html { redirect_to @csv_attribute_filter, notice: 'Csv attribute filter was successfully created.' }
        format.json { render :show, status: :created, location: @csv_attribute_filter }
      else
        format.html { render :new }
        format.json { render json: @csv_attribute_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csv_attribute_filters/1
  # PATCH/PUT /csv_attribute_filters/1.json
  def update
    respond_to do |format|
      if @csv_attribute_filter.update(csv_attribute_filter_params)
        format.html { redirect_to @csv_attribute_filter, notice: 'Csv attribute filter was successfully updated.' }
        format.json { render :show, status: :ok, location: @csv_attribute_filter }
      else
        format.html { render :edit }
        format.json { render json: @csv_attribute_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csv_attribute_filters/1
  # DELETE /csv_attribute_filters/1.json
  def destroy
    @csv_attribute_filter.destroy
    respond_to do |format|
      format.html { redirect_to csv_attribute_filters_url, notice: 'Csv attribute filter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csv_attribute_filter
      @csv_attribute_filter = CsvAttributeFilter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csv_attribute_filter_params
      params.require(:csv_attribute_filter).permit(:csv_filter_id, :csv_attribute_id)
    end
end
