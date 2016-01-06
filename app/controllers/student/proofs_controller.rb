class Student::ProofsController < ApplicationController
  def index
    @proofs = Activity.find(params[:activity_id]).proofs.all
  end

  def new
    @proof = Proof.new
  end

  def create
    @proof = Proof.new(proof_params)
    @proof.activity_id = params[:activity_id]

    if @proof.save
      redirect_to  student_competency_learning_objective_activity_proofs_path
    else
      render 'new'
    end
  end

  private

  def proof_params
    params.require(:proof).permit(:description, :activity_id, :reference)
  end
end
