# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100314235131) do

  create_table "certifications", :force => true do |t|
    t.string   "name",       :null => false
    t.date     "start",      :null => false
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "location",    :null => false
    t.date     "date",        :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "position",    :null => false
    t.string   "employer",    :null => false
    t.string   "location",    :null => false
    t.date     "start",       :null => false
    t.date     "end"
    t.text     "description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "address",    :null => false
    t.string   "city",       :null => false
    t.string   "state",      :null => false
    t.string   "zip",        :null => false
    t.text     "summary"
    t.string   "phone",      :null => false
    t.string   "email",      :null => false
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "level",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
