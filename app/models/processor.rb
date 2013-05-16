class Processor < ActiveRecord::Base
  attr_accessible :computer_id, :consumption, :name_string, :real_consumption

  set_table_name "processor"
  set_primary_key "id"

  belongs_to :computer
end
