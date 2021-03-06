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

ActiveRecord::Schema.define(version: 20150707033328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hikers", force: :cascade do |t|
    t.string   "name"
    t.integer  "backpack_size"
    t.float    "volume"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.float    "weight"
    t.float    "volume"
    t.integer  "hiker_id"
    t.integer  "pack_id"
  end

  create_table "recommends", force: :cascade do |t|
    t.string   "name"
    t.integer  "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
