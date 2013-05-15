class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :name
      t.string :ip
      t.string :gpu

      t.timestamps
    end
  end
end
