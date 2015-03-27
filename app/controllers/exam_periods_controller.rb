class ExamPeriodsController < ApplicationController
  before_action :set_exam_period, only: [:show, :edit, :update, :destroy]

  # GET /exam_periods
  # GET /exam_periods.json
  def index
    @exam_periods = ExamPeriod.all
  end

  # GET /exam_periods/1
  # GET /exam_periods/1.json
  def show
  end

  # GET /exam_periods/new
  def new
    @exam_period = ExamPeriod.new
  end

  # GET /exam_periods/1/edit
  def edit
  end

  # POST /exam_periods
  # POST /exam_periods.json
  def create
    @exam_period = ExamPeriod.new(exam_period_params)

    respond_to do |format|
      if @exam_period.save
        format.html { redirect_to @exam_period, notice: 'Exam period was successfully created.' }
        format.json { render :show, status: :created, location: @exam_period }
      else
        format.html { render :new }
        format.json { render json: @exam_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_periods/1
  # PATCH/PUT /exam_periods/1.json
  def update
    respond_to do |format|
      if @exam_period.update(exam_period_params)
        format.html { redirect_to @exam_period, notice: 'Exam period was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam_period }
      else
        format.html { render :edit }
        format.json { render json: @exam_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_periods/1
  # DELETE /exam_periods/1.json
  def destroy
    @exam_period.destroy
    respond_to do |format|
      format.html { redirect_to exam_periods_url, notice: 'Exam period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_period
      @exam_period = ExamPeriod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_period_params
      params.require(:exam_period).permit(:name, :start, :end)
    end
end
