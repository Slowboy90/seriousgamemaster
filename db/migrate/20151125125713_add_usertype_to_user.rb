# usertype to user class
class AddUsertypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :usertype, :integer
  end
end
