class StudentExamsController < ApplicationController
  before_action :set_student_exam, only: [:show, :edit, :update, :destroy]

  # GET /student_exams
  # GET /student_exams.json
  def index
    @student_exams = StudentExam.all
  end

  # GET /student_exams/1
  # GET /student_exams/1.json
  def show
  end

  # GET /student_exams/new
  def new
    @student_exam = StudentExam.new
  end

  # GET /student_exams/1/edit
  def edit
  end

  # POST /student_exams
  # POST /student_exams.json
  def create
    @student_exam = StudentExam.new(student_exam_params)

    respond_to do |format|
      if @student_exam.save
        format.html { redirect_to @student_exam, notice: 'Student exam was successfully created.' }
        format.json { render :show, status: :created, location: @student_exam }
      else
        format.html { render :new }
        format.json { render json: @student_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_exams/1
  # PATCH/PUT /student_exams/1.json
  def update
    respond_to do |format|
      if @student_exam.update(student_exam_params)
        format.html { redirect_to @student_exam, notice: 'Student exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_exam }
      else
        format.html { render :edit }
        format.json { render json: @student_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_exams/1
  # DELETE /student_exams/1.json
  def destroy
    @student_exam.destroy
    respond_to do |format|
      format.html { redirect_to student_exams_url, notice: 'Student exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_exam
      @student_exam = StudentExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_exam_params
      params.require(:student_exam).permit(:student_id, :course_id, :supervision_id, :start, :end, :present)
    end
end
