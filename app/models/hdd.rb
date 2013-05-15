class Hdd < ActiveRecord::Base
  attr_accessible :capacity, :computer_id, :model
  set_table_name "hdd"
  set_primary_key "id"

  belongs_to :computer

end
