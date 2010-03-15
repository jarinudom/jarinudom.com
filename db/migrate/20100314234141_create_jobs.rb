class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :position, :null => false
      t.string :employer, :null => false
      t.string :location, :null => false
      t.date :start, :null => false
      t.date :end
      t.text :description, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
