# add active to competency class
class AddActiveToCompetency < ActiveRecord::Migration
  def change
    add_column :competencies, :active, :boolean
  end
end
