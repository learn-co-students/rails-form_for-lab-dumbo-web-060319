class StudentsController < ApplicationController
  def index
    @student=Student.all
  end

  def create
    @student=Student.create(sc_params)
    redirect_to  @student
  end

  def new

  end

  def edit
    @student=Student.find(params[:id])
  end

  def show
    @student=Student.find(params[:id])
  end

  def update
  @student=Student.find(params[:id])
  @student.update(sc_params)
  redirect_to @student
  end


  private

  def sc_params
    params.require(:student).permit(:first_name,:last_name)
  end
end
