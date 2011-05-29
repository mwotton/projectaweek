class AddShortname < ActiveRecord::Migration
  def self.up
    add_column :entries, :shortname, :string, :null => false, :default => "FIXME"
    add_column :hackers, :homepage, :string, :null => false, :default => "http://haskell.org"
  end

  def self.down
  end
end
