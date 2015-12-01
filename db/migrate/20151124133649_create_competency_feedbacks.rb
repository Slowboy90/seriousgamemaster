# create competencyfeedback class
class CreateCompetencyFeedbacks < ActiveRecord::Migration
  def change
    create_table :competency_feedbacks do |t|
      t.integer :feedback_id
      t.integer :competency_id

      t.timestamps null: false
    end
  end
end
