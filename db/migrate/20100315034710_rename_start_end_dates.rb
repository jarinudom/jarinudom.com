class RenameStartEndDates < ActiveRecord::Migration
  def self.up
    rename_column :certifications, :start, :start_date
    rename_column :certifications, :end, :end_date
    rename_column :jobs, :start, :start_date
    rename_column :jobs, :end, :end_date
  end

  def self.down
    rename_column :jobs, :end_date, :end
    rename_column :jobs, :start_date, :start
    rename_column :certifications, :end_date, :end
    rename_column :certifications, :start_date, :start
  end
end
