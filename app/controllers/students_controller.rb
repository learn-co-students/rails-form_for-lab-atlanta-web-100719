class StudentsController < ApplicationController
  def index
  end

  def show
    find_student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(post_params)
    redirect_to student_path(@student)
  end

  def edit
    find_student
  end

  def update
    @student = Student.update(post_params)
    redirect_to student_path(@student)
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
