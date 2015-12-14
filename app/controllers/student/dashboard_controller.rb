class Student::DashboardController < ApplicationController
  def index
    @competency = Competency.where(active: true).all
  end
end
