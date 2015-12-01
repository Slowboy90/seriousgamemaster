# Model class Competency
class Competency < ActiveRecord::Base
  has_many :learning_objectives
  has_many :feedbacks, through: :competency_feedbacks
  has_many :competency_feedbacks

  accepts_nested_attributes_for :feedbacks, :competency_feedbacks
end
