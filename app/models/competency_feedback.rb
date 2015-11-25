class CompetencyFeedback < ActiveRecord::Base
  belongs_to :competency
  belongs_to :feedback
end
