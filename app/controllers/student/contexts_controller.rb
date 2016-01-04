class Student::ContextsController < ApplicationController
  def index
    
  end

  def new
    @context = Context.new
  end

  def create
    @context = Context.new(context_params)

    if @context.save
      @context.activity_id = params[:activity_id]
      @context.save
      redirect_to student_competency_learning_objective_activity_path(params[:competency_id], params[:learning_objective_id], params[:activity_id]), notice:  'Context succesvol toegevoegd!'
    else
      render 'new'
    end
  end

  private

  def context_params
    params.require(:context).permit(:description)
  end
end
