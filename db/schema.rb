# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101007123721) do

  create_table "attendees", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "committee_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "present1",     :default => false
    t.boolean  "present2",     :default => false
    t.boolean  "present3",     :default => false
  end

  create_table "chairs", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.integer  "committee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "committees", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.text     "text"
    t.integer  "committee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
