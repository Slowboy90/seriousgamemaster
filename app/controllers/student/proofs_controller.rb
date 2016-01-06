class Student::ProofsController < ApplicationController
  def index
    @proofs = Activity.find(params[:activity_id]).proofs.all
  end
end
