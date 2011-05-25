class CreateHackers < ActiveRecord::Migration
  def self.up
    create_table :hackers do |t|
      t.column 'twitter', :text,  :null => false
      t.timestamps    
    end
  end

  def self.down
    drop_table :hackers
  end
end
