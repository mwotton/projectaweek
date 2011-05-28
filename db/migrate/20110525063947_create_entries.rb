class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.text :link, :null => false
      t.references :hacker, :null => false
      t.references :round, :null => false
      t.timestamps
    end
    # only one entry per hacker each round
    add_index :entries, [:hacker_id, :round_id], :unique => true
  end

  def self.down
    drop_table :entries
  end
end
