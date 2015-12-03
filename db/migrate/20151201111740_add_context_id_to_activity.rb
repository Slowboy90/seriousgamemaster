class AddContextIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :context_id, :integer
  end
end
