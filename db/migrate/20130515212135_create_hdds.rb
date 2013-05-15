class CreateHdds < ActiveRecord::Migration
  def change
    create_table :hdds do |t|
      t.integer :capacity
      t.string :model
      t.reference :computer_id

      t.timestamps
    end
  end
end
