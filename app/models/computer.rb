class Computer < ActiveRecord::Base
  attr_accessible :gpu, :ip, :name

  has_many :hdds
  has_many :motherboards
  has_many :processors
  has_many :rams
end
