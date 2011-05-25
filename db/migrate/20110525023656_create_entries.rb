class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.references :round, :null => false
      t.references :hacker, :null => false
      t.string :link, :null => false
      t.string :shortname, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
