class SchoolClassesController < ApplicationController
    def create
        @class = SchoolClass.create(post_params(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    def new
        @class = SchoolClass.new
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        SchoolClass.find(params[:id]).update(post_params(:title, :room_number))
        redirect_to school_class_path(params[:id])
    end

private
    def post_params(*args)
        params.require(:school_class).permit(*args)
    end
end