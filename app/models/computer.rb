class Computer < ActiveRecord::Base
  attr_accessible :gpu, :ip, :name

  has_many :hdds
end
