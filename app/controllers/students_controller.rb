class StudentsController < ApplicationController
    def create
        @student = Student.create(post_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def new
        @student = Student.new
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        Student.find(params[:id]).update(post_params(:first_name, :last_name))
        redirect_to student_path(params[:id])
    end

private
    def post_params(*args)
        params.require(:student).permit(*args)
    end
end