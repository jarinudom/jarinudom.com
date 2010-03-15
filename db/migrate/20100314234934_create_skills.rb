class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :name, :null => false
      t.integer :level, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
