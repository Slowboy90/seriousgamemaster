# create feedback class
class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :comment
      t.integer :learning_objective_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
