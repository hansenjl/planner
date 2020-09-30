# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_30_051743) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "length"
    t.string "location"
    t.text "description"
    t.integer "cost"
    t.string "supplies"
    t.integer "trip_id", null: false
    t.integer "timeslot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["timeslot_id"], name: "index_activities_on_timeslot_id"
    t.index ["trip_id"], name: "index_activities_on_trip_id"
  end

  create_table "timeslots", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.datetime "startdate"
    t.datetime "enddate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_timeslots_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.datetime "startdate"
    t.datetime "enddate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "activities", "timeslots"
  add_foreign_key "activities", "trips"
  add_foreign_key "timeslots", "trips"
  add_foreign_key "trips", "users"
end
