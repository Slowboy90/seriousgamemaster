# class learning objective
class Student::LearningObjectivesController < ApplicationController
  def index
    @competency = params[:competency_id]
    @learning_objectives = LearningObjective.where(user_id: current_user.id, competency_id: @competency)
  end

  def show
    @learning_objective = LearningObjective.find(params[:id])
  end

  def new
    @learning_objective = LearningObjective.new
  end

  def create
    @learning_objective = LearningObjective.new(learning_objective_params)
    @learning_objective.user_id = current_user.id

    if @learning_objective.save
      redirect_to student_competency_learning_objectives_path, notice:  "Leerdoel succesvol aangemaakt"
    else
      render "new"
    end
  end

  def edit
    @learning_objective = LearningObjective.find(params[:id])
  end

  def update
    @learning_objective = LearningObjective.find(params[:id])

    if @learning_objective.update(learning_objective_params)

       redirect_to student_competency_learning_objectives_path, notice: "Leerdoel succesvol aangepast"

    else
      render "edit"
    end
  end

  def destroy
    @learning_objective = LearningObjective.find(params[:id])
    @learning_objective.destroy
    redirect_to student_competency_learning_objectives_path, notice: "Leerdoel succesvol verwijderd"
  end

  private

  def learning_objective_params
    params.require(:learning_objective)
      .permit(:name, :competency_id, :academic_year, :period)
  end
end
