class Entry < ActiveRecord::Base
  belongs_to :hacker
  belongs_to :round
end
