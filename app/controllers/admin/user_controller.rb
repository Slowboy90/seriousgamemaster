class Admin::UserController < ApplicationController
  def index
    @student = User.where('usertype = 1')
    @teacher = User.where('usertype = 2')
    @student = User.where('usertype = 3')

    # @all_students = Student.all.count
  end
end
