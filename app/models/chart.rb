class Chart < ActiveRecord::Base
  attr_accessible :computer_id, :cpu_poraba, :ram_poraba
  set_table_name "charts"
  set_primary_key "id"

  belongs_to :computer
end
