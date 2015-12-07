# class competencies controller 
class Admin::CompetenciesController < ApplicationController
  
  def index
    @competency = Competency.all
  end

  def show
    @competency = Competency.find(params[:id])
  end

  def new
    @competency = Competency.new
  end

  def create
    @competency = Competency.new(competency_params)

    if @competency.save
      redirect_to admin_root_path, notice: 'Competentie succesvol aangemaakt'
    else
      render "new"
    end
  end


  def edit
    @competency = Competency.find(params[:id])
  end

  def update
    @competency = Competency.find(params[:id])

    if @competency.update(competency_params)

       redirect_to admin_root_path, notice: 'Competentie succesvol aangepast'

    else
      render "edit"
    end
  end


 def destroy
    @competency = Competency.find(params[:id])
    @competency.destroy
    redirect_to admin_root_path, notice: 'Competentie succesvol verwijderd'
  end

  private

  def competency_params
    params.require(:competency)
      .permit(:name, :description, :active)
  end
end
