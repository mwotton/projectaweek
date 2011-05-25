class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.text :link
      t.Hacker :references
      t.Round :references

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
