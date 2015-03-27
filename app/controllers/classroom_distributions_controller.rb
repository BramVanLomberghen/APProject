class ClassroomDistributionsController < ApplicationController
  def index
    @q = StudentExam.ransack(params[:q])
    @student_exams = @q.result(distinct: true)
    @students = Student.all
    @courses = Course.all
    @specializations = Specialization.all
    @supervisions = Supervision.all
    @classrooms = Classroom.all

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'Lokaalverdeling',:template => 'classroom_distributions/index.html.erb'
      end
      format.xls
    end
  end
end
