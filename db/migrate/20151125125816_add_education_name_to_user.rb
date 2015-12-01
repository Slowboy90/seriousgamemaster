# education number to user class
class AddEducationNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :education_name, :string
  end
end
