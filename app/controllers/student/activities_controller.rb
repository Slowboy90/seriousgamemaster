class Student::ActivitiesController < ApplicationController
  before_action { @learning_objective = params[:learning_objective_id] }
  def index
    @activity = LearningObjective.find(@learning_objective).activities.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end
  
  def create
    @activity = LearningObjective.find(@learning_objective).activities.new(activity_params)

    if @activity.save
      redirect_to student_learning_objective_activities_path(@learning_objective), notice: 'Activiteit succesvol aangemaakt'
    else
      render "new"
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to student_learning_objective_activities_path(@learning_objective), notice: 'Activiteit succesvol aangepast'
    else
      render "edit"
    end
  end

    def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to student_learning_objective_activities_path(@learning_objective), notice: "Activiteit succesvol verwijderd"
  end


  private

  def activity_params
    params.require(:activity)
      .permit(:description, :learning_objective_id, :context_id)
  end
end
