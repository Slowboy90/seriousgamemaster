# education number to user class
class AddEducationNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :education_number, :integer
  end
end
