class CreateEducations < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.string :name, :null => false
      t.string :location, :null => false
      t.date :date, :null => false
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :educations
  end
end
