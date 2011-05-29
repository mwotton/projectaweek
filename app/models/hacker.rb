class Hacker < ActiveRecord::Base
  has_many :entries
  has_many :rounds, :through => :entries

  validates_uniqueness_of :twitter
  
  def self.find_or_create_from_hash(hash)
    self.find_from_hash(hash) || self.create_from_hash(hash)
  end
  
  def self.find_from_hash(hash)
    find_by_twitter(hash['uid'])
  end

  def self.create_from_hash(hash)
    ap hash
    create! :twitter => hash['uid'],:name => hash['user_info']['name']
    
  end
end
