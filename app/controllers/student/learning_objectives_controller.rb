# class learning objective
class Student::LearningObjectivesController < ApplicationController
  def index
    @learning_objectives = current_user.learning_objectives.all
  end

  def show
    @learning_objective = LearningObjective.find(params[:id])
  end

  def new
    @learning_objective = LearningObjective.new
  end

  def create
    @learning_objective = LearningObjective.new(learning_objective_params)

    if @learning_objective.save
      redirect_to student_root_path, :notice => "Leerdoel succesvol aangemaakt"
    else
      render "new"
    end
  end

  private

  def learning_objective_params
    params.require(:learning_objective)
      .permit(:name, :competency_id, :academic_year, :period)
  end
end
