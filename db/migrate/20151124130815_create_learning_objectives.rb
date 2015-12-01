# create learning objectives class
class CreateLearningObjectives < ActiveRecord::Migration
  def change
    create_table :learning_objectives do |t|
      t.string :name
      t.integer :user_id
      t.integer :competency_id
      t.boolean :achieved
      t.integer :academic_year
      t.integer :period

      t.timestamps null: false
    end
  end
end
