class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.integer :capacity
      t.integer :consumption
      t.reference :computer_id

      t.timestamps
    end
  end
end
