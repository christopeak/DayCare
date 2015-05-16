# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150514025507) do

  create_table "children", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "class_room_id"
    t.string   "parent_first_name"
    t.string   "parent_last_name"
    t.string   "phone"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "class_rooms", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "max_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "teacher_first_name"
    t.string   "teacher_last_name"
  end

  create_table "waiting_list_entries", force: true do |t|
    t.integer  "class_room_id"
    t.integer  "child_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
