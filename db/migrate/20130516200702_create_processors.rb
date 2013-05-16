class CreateProcessors < ActiveRecord::Migration
  def change
    create_table :processors do |t|
      t.string :name_string
      t.integer :consumption
      t.integer :real_consumption
      t.reference :computer_id

      t.timestamps
    end
  end
end
