# Model class Feedback
class Feedback < ActiveRecord::Base
  belongs_to :user
  belongs_to :student, class_name: User, foreign_key: :student_id
  belongs_to :learning_objective
  has_many :competencies, through: :competency_feedbacks
  has_many :competency_feedbacks

  accepts_nested_attributes_for :competencies, :competency_feedbacks
end
