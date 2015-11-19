class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :description
      t.integer :learning_objective_id
      t.text :context

      t.timestamps null: false
    end
  end
end
