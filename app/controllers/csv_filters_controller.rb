class CsvFiltersController < ApplicationController
  before_action :set_csv_filter, only: [:show, :edit, :update, :destroy]

  # GET /csv_filters
  # GET /csv_filters.json
  def index
    @csv_filters = CsvFilter.all
  end

  # GET /csv_filters/1
  # GET /csv_filters/1.json
  def show
  end

  # GET /csv_filters/new
  def new
    @csv_filter = CsvFilter.new
  end

  # GET /csv_filters/1/edit
  def edit
  end

  # POST /csv_filters
  # POST /csv_filters.json
  def create
    @csv_filter = CsvFilter.new(csv_filter_params)

    respond_to do |format|
      if @csv_filter.save
        format.html { redirect_to @csv_filter, notice: 'Csv filter was successfully created.' }
        format.json { render :show, status: :created, location: @csv_filter }
      else
        format.html { render :new }
        format.json { render json: @csv_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csv_filters/1
  # PATCH/PUT /csv_filters/1.json
  def update
    respond_to do |format|
      if @csv_filter.update(csv_filter_params)
        format.html { redirect_to @csv_filter, notice: 'Csv filter was successfully updated.' }
        format.json { render :show, status: :ok, location: @csv_filter }
      else
        format.html { render :edit }
        format.json { render json: @csv_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csv_filters/1
  # DELETE /csv_filters/1.json
  def destroy
    @csv_filter.destroy
    respond_to do |format|
      format.html { redirect_to csv_filters_url, notice: 'Csv filter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csv_filter
      @csv_filter = CsvFilter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csv_filter_params
      params.require(:csv_filter).permit(:name, :type)
    end
end
