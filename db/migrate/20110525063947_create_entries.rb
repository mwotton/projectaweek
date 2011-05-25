class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.text :link, :null => false
      t.references :hacker, :null => false
      t.references :round, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
