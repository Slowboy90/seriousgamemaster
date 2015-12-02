# class learning objective
class Student::LearningObjectivesController < ApplicationController
  def index
    @learning_objectives = current_user.learning_objectives.all
  end
end
