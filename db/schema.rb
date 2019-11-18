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

ActiveRecord::Schema.define(version: 2019_11_14_103146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "load_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.date "hire_date"
    t.decimal "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pick_drops", force: :cascade do |t|
    t.string "address"
    t.boolean "pick_up"
    t.boolean "drop_off"
    t.integer "order"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_pick_drops_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.decimal "amount"
    t.decimal "driver_rate"
    t.decimal "flat_rate"
    t.string "origin_business_name"
    t.string "origin_address"
    t.decimal "distance"
    t.string "final_destination_address"
    t.string "final_destination_business_name"
    t.bigint "customer_id"
    t.bigint "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_trips_on_customer_id"
    t.index ["driver_id"], name: "index_trips_on_driver_id"
  end

  add_foreign_key "pick_drops", "trips"
  add_foreign_key "trips", "customers"
  add_foreign_key "trips", "drivers"
end
