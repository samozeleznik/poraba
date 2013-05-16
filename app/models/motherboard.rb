class Motherboard < ActiveRecord::Base
  attr_accessible :computer_id, :manufacturer, :model

  set_table_name "motherboard"
  set_primary_key "id"

  belongs_to :computer
end
