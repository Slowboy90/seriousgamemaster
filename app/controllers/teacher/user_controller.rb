class Teacher::UserController < ApplicationController
  def index
    
  end

  def students
    @student = User.where('usertype = 1')
  end

  def teachers
    @teacher = User.where('usertype = 2')
  end
end

