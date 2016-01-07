class Student::ProofsController < ApplicationController
  def index
    @proofs = Activity.find(params[:activity_id]).proofs.all
  end

  def show
    @proof = Proof.find(params[:id])
  end

  def new
    @proof = Proof.new
  end

  def create
    @proof = Proof.new(proof_params)
    @proof.activity_id = params[:activity_id]

    if @proof.save
      redirect_to  student_competency_learning_objective_activity_proofs_path, notice: 'Bewijs succesvol aangemaakt'

    else
      render 'new'
    end
  end

  def edit
    @proof = Proof.find(params[:id])
  end

  def update
    @proof = Proof.find(params[:id])

    if @proof.update(proof_params)

      redirect_to student_competency_learning_objective_activity_proofs_path, notice: 'Bewijs succesvol aangepast'

    else
      render 'edit'
    end
  end

  def destroy
    @proof = Proof.find(params[:id])
    @proof.destroy

    redirect_to student_competency_learning_objective_activity_proofs_path, notice: 'Bewijs succesvol verwijderd'
  end
  private

  def proof_params
    params.require(:proof).permit(:description, :activity_id, :reference)
  end
end
