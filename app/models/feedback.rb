class Feedback < ActiveRecord::Base
  belongs to :user
  belongs to :learning_objective
end
