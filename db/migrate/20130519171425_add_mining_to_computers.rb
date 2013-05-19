class AddMiningToComputers < ActiveRecord::Migration
  def change
    add_column :computers, :mining, :boolean
  end
end
