class RemoveContextFromActivity < ActiveRecord::Migration
  def change
    remove_column :activities, :context, :text
  end
end
