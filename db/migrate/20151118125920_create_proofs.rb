# create proof class
class CreateProofs < ActiveRecord::Migration
  def change
    create_table :proofs do |t|
      t.text :description
      t.integer :activity_id
      t.text :reference

      t.timestamps null: false
    end
  end
end
