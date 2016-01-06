class RemoveContextIdFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :context_id, :integer
  end
end
