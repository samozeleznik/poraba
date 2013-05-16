class Ram < ActiveRecord::Base
  attr_accessible :capacity, :computer_id, :consumption

  set_table_name "ram"
  set_primary_key "id"

  belongs_to :computer

end
