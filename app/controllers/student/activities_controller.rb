class Student::ActivitiesController < ApplicationController
  before_action { @learning_objective = params[:learning_objective_id] }
  def index
    @activity = LearningObjective.find(@learning_objective).activities.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

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
      .permit(:description)
  end
end
