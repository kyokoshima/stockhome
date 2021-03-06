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

ActiveRecord::Schema.define(version: 20141025081723) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.binary   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.integer  "unit_id",    null: false
  end

  create_table "stocks", force: true do |t|
    t.string   "name"
    t.float    "quantity"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "consumption_per",   default: "D", null: false
    t.integer  "consumption_count", default: 0,   null: false
    t.integer  "category_id"
  end

  create_table "units", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       null: false
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uid",        default: "", null: false
    t.string   "provider",   default: "", null: false
    t.string   "name"
  end

  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

end
