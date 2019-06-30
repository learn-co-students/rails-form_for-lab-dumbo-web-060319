class SchoolClassesController < ApplicationController
  def index
    @school_classes=SchoolClass.all
  end

  def create
    @student=SchoolClass.create(sc_params)
    redirect_to  @student
  end

  def new

  end
  def edit
    @sc=SchoolClass.find(params[:id])
  end

  def show
    @sc=SchoolClass.find(params[:id])
  end

  def update
    @sc=SchoolClass.find(params[:id])
    @sc.update(sc_params)
    redirect_to @sc
  end

  def destroy

  end

  private

  def sc_params
    params.require(:school_class).permit(:title,:room_number)
  end
end
