# student to feedback class
class AddStudentIdToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :student_id, :integer
  end
end
