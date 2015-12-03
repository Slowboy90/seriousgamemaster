class CreateContexts < ActiveRecord::Migration
  def change
    create_table :contexts do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
