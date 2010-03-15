class CreateCertifications < ActiveRecord::Migration
  def self.up
    create_table :certifications do |t|
      t.string :name, :null => false
      t.date :start, :null => false
      t.date :end

      t.timestamps
    end
  end

  def self.down
    drop_table :certifications
  end
end
