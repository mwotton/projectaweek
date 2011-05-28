class Hacker < ActiveRecord::Base
  has_many :entries
  has_many :rounds, :through => :entries
end
