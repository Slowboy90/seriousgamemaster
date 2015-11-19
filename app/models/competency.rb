# Model class Competency
class Competency < ActiveRecord::Base
  has_many :learning_objectives
end
