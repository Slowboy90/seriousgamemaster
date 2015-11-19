# Model class Feedback
class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :learning_objective
end
