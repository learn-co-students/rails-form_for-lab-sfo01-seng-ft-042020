class StudentsController < ApplicationController

  def index
      @students = Student.all
  end

  def show
      @student = Student.find(params[:id])
      @name = @student.to_s
  end

  def new
      @student= Student.new
  end

  
  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to @student
end 

def edit
    @student = Student.find(params[:id])
end

  def update
      @student = Student.find(params[:id])
      @student.update(params.require(:student).permit(:first_name, :last_name))
      redirect_to student_path(@student)
  end

end 