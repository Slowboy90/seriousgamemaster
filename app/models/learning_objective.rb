# learningobjective class
class LearningObjective < ActiveRecord::Base
  has_many :activities
  has_many :feedbacks
  belongs_to :user
  belongs_to :competency
end
