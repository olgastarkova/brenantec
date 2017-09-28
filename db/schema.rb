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

ActiveRecord::Schema.define(version: 20170928151642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "brequests", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "checkin"
    t.string   "date"
    t.date     "checkout"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "nb_guests"
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.text     "intro"
    t.boolean  "active",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "photo"
  end

  create_table "programsteps", force: :cascade do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.text     "description"
    t.integer  "workshop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["workshop_id"], name: "index_programsteps_on_workshop_id", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "workshop_id"
    t.datetime "date"
    t.integer  "available"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["workshop_id"], name: "index_sessions_on_workshop_id", using: :btree
  end

  create_table "workshops", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "capacity"
    t.integer  "price"
    t.integer  "coach_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "format",                     null: false
    t.string   "photos"
    t.json     "program",     default: "{}"
    t.index ["coach_id"], name: "index_workshops_on_coach_id", using: :btree
  end

  add_foreign_key "programsteps", "workshops"
  add_foreign_key "sessions", "workshops"
  add_foreign_key "workshops", "coaches"
end
