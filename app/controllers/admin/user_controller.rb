# class user
class Admin::UserController < ApplicationController
  def index
    @student = User.where('usertype = 1')
    @teacher = User.where('usertype = 2')
    @admin = User.where('usertype = 3')
  end
end
