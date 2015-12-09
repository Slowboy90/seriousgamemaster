class Student::ActivitiesController < ApplicationController
  def index
    @activity = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to admin_root_path, notice: 'Competentie succesvol aangemaakt'
    else
      render "new"
    end
  end


	private

  def activity_params
    params.require(:activity)
      .permit(:name, :description,)
  end
end
