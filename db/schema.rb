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

ActiveRecord::Schema.define(version: 2018_09_15_224241) do

  create_table "entries", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "latitude", precision: 15, scale: 10
    t.decimal "longitude", precision: 15, scale: 10
    t.index ["latitude", "longitude"], name: "index_entries_on_latitude_and_longitude"
  end

  create_table "geocodes", force: :cascade do |t|
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "entrie_id"
    t.index ["entrie_id"], name: "index_geocodes_on_entrie_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "size"
    t.integer "adaptation_for_seniors"
    t.integer "medical_equipment"
    t.integer "medicine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "entrie_id"
    t.index ["entrie_id"], name: "index_scores_on_entrie_id"
  end

  create_table "ubs", force: :cascade do |t|
    t.integer "current_page"
    t.integer "per_page"
    t.integer "total_entries"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
