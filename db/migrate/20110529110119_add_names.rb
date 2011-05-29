class AddNames < ActiveRecord::Migration
  def self.up
    add_column :hackers, :name, :string
  end

  def self.down
  end
end
