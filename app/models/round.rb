class Round < ActiveRecord::Base
  has_many :entries
  has_many :hackers, :through => :entries
end
