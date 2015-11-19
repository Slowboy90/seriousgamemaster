# Model class LearninObjective
class LearningObjective < ActiveRecord::Base
  has_many :feedback
  belongs_to :user
  belongs_to :competency
  has_many :activities
end
