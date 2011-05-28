class Entry < ActiveRecord::Base
  belongs_to :hacker , :counter_cache => true
  belongs_to :round
end
