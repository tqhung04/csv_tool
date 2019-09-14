class CsvOperatorsController < ApplicationController
  before_action :set_csv_operator, only: [:show, :edit, :update, :destroy]

  # GET /csv_operators
  # GET /csv_operators.json
  def index
    @csv_operators = CsvOperator.all
  end

  # GET /csv_operators/1
  # GET /csv_operators/1.json
  def show
  end

  # GET /csv_operators/new
  def new
    @csv_operator = CsvOperator.new
  end

  # GET /csv_operators/1/edit
  def edit
  end

  # POST /csv_operators
  # POST /csv_operators.json
  def create
    @csv_operator = CsvOperator.new(csv_operator_params)

    respond_to do |format|
      if @csv_operator.save
        format.html { redirect_to @csv_operator, notice: 'Csv operator was successfully created.' }
        format.json { render :show, status: :created, location: @csv_operator }
      else
        format.html { render :new }
        format.json { render json: @csv_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csv_operators/1
  # PATCH/PUT /csv_operators/1.json
  def update
    respond_to do |format|
      if @csv_operator.update(csv_operator_params)
        format.html { redirect_to @csv_operator, notice: 'Csv operator was successfully updated.' }
        format.json { render :show, status: :ok, location: @csv_operator }
      else
        format.html { render :edit }
        format.json { render json: @csv_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csv_operators/1
  # DELETE /csv_operators/1.json
  def destroy
    @csv_operator.destroy
    respond_to do |format|
      format.html { redirect_to csv_operators_url, notice: 'Csv operator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csv_operator
      @csv_operator = CsvOperator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csv_operator_params
      params.require(:csv_operator).permit(:type, :name)
    end
end
