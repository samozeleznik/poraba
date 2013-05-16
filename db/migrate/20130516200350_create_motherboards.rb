class CreateMotherboards < ActiveRecord::Migration
  def change
    create_table :motherboards do |t|
      t.string :manufacturer
      t.string :model
      t.reference :computer_id

      t.timestamps
    end
  end
end
