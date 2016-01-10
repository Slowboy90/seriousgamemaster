# class context
class Student::ContextsController < ApplicationController
  def new
    @context = Context.new
  end

  def create
    @context = Context.new(context_params)

    if @context.save
      @context.activity_id = params[:activity_id]
      @context.save
      redirect_to student_competency_learning_objective_activity_path(
        params[:competency_id], params[:learning_objective_id],
        params[:activity_id]), notice:  'Context succesvol toegevoegd!'
    else
      render 'new'
    end
  end

  def edit
    @context = Context.find(params[:id])
  end

  def update
    @context = Context.find(params[:id])

    if @context.update(context_params)
      redirect_to student_competency_learning_objective_activity_path(
        params[:competency_id], params[:learning_objective_id],
        params[:activity_id]), notice: 'Context succesvol aangepast'
    else
      render 'edit'
    end
  end

  def destroy
    @context = Context.find(params[:id])
    @context.destroy
    redirect_to student_competency_learning_objective_activity_path(
      params[:competency_id], params[:learning_objective_id],
      params[:activity_id]), notice: 'Activiteit succesvol verwijderd'
  end

  private

  def context_params
    params.require(:context).permit(:description)
  end
end
