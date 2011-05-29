class AddRounds < ActiveRecord::Migration
  def self.up
    time = Time.utc 2011, "may", 10
    puts time
    endtime =  Time.utc 2100
    while time < endtime
      Round.create :deadline => time
      time += 7.days
    end
  end

  def self.down
  end
end
