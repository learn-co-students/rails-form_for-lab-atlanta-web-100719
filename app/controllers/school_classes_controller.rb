class SchoolClassesController < ApplicationController
    def index
    end
  
    def show
      find_school_classes
    end
  
    def new
      @school_class = SchoolClass.new
    end
  
    def create
      @school_class = SchoolClass.create(post_params)
      redirect_to school_class_path(@school_class)
    end
  
    def edit
      find_school_classes
    end
  
    def update
      @school_class = SchoolClass.update(post_params)
      redirect_to school_class_path(@school_class)
    end
  
    private
  
    def find_school_classes
      @school_class = SchoolClass.find(params[:id])
    end
  
    def post_params
      params.require(:school_class).permit(:title, :room_number)
    end
  end
