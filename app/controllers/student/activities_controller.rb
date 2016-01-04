class Student::ActivitiesController < ApplicationController
  def index
    @activity = LearningObjective.find(params[:learning_objective_id]).activities.all
  end

  def show
    @activity = Activity.find(params[:id])
    context = Context.where(activity_id: @activity).first
    if context.nil?
      @co = 'Er moet nog een context worden toegevoegd'
    else
      @co = @context.description
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    learning_objective = LearningObjective.find(params[:learning_objective_id])
    @activity = LearningObjective.find(learning_objective).activities.new(activity_params)

    if @activity.save
      redirect_to student_competency_learning_objective_activities_path, notice: 'Activiteit succesvol aangemaakt'
    else
      render 'new'
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(activity_params)
      redirect_to student_competency_learning_objective_activities_path, notice: 'Activiteit succesvol aangepast'
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to student_competency_learning_objective_activities_path, notice: 'Activiteit succesvol verwijderd'
end

  private

  def activity_params
    params.require(:activity)
      .permit(:description, :learning_objective_id)
  end
end
