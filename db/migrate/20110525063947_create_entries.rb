class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.text :link, :null => false
      t.Hacker :references, :null => false
      t.Round :references, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
