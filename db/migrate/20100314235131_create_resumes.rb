class CreateResumes < ActiveRecord::Migration
  def self.up
    create_table :resumes do |t|
      t.string :name, :null => false
      t.string :address, :null => false
      t.string :city, :null => false
      t.string :state, :null => false
      t.string :zip, :null => false
      t.text :summary
      t.string :phone, :null => false
      t.string :email, :null => false
      t.string :website

      t.timestamps
    end
  end

  def self.down
    drop_table :resumes
  end
end
