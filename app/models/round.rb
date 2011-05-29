class Round < ActiveRecord::Base
  has_many :entries
  has_many :hackers, :through => :entries
  def self.open_rounds
    self.where("deadline < ?", 1.week.from_now).order(:deadline)
  end
end
