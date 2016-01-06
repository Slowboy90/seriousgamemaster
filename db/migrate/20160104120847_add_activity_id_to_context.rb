class AddActivityIdToContext < ActiveRecord::Migration
  def change
    add_column :contexts, :activity_id, :integer
  end
end
