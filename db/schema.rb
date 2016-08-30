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

ActiveRecord::Schema.define(version: 20160830223254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analyses", force: :cascade do |t|
    t.integer  "geo_location_id"
    t.decimal  "area"
    t.decimal  "yield"
    t.boolean  "is_shaded"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "geo_locations", force: :cascade do |t|
    t.string   "country"
    t.string   "state"
    t.decimal  "soc_ref"
    t.string   "flu"
    t.decimal  "fmg_full"
    t.decimal  "fmg_reduced"
    t.decimal  "fmg_no_till"
    t.decimal  "fl_low"
    t.decimal  "fl_high_without_manure"
    t.decimal  "fl_high_with_manure"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end