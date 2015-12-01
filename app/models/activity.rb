# Model class Activity
class Activity < ActiveRecord::Base
  belongs_to :learning_objective
  has_many :proofs
end
