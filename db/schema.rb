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

ActiveRecord::Schema.define(version: 2019_11_14_063003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "trips", force: :cascade do |t|
    t.boolean "has_multiple_pd", default: false
    t.string "commodity"
    t.string "weight"
    t.string "units"
    t.string "load_size"
    t.decimal "miles", default: "0.0"
    t.decimal "invoice_price", default: "0.0"
    t.decimal "booking_fee", default: "0.0"
    t.decimal "percent_deducted"
    t.decimal "total_company_expenses"
    t.decimal "rate_to_owner_operator"
    t.decimal "percent_coverted_to_dollars", default: "0.0"
    t.decimal "driver_cents_pm"
    t.decimal "rate_after_booking_fee", default: "0.0"
    t.decimal "agent_fee", default: "0.0"
    t.date "pick_up_date"
    t.time "pick_up_time"
    t.string "broker_shipper_load_id"
    t.string "pick_up_notes"
    t.date "delivery_date"
    t.time "delivery_time"
    t.string "delivery_notes"
    t.string "equipment_type"
    t.string "status_name"
    t.integer "company_user_id"
    t.integer "driver_user_id"
    t.integer "company_profile_id"
    t.string "updated_by"
    t.string "special_instructions"
    t.string "dimentions"
    t.string "origin_street"
    t.string "origin_city"
    t.string "origin_state"
    t.string "origin_zip"
    t.string "origin_phone"
    t.string "origin_contact"
    t.float "origin_latitude"
    t.float "origin_longitude"
    t.string "destination_street"
    t.string "destination_city"
    t.string "destination_state"
    t.string "destination_zip"
    t.string "destination_phone"
    t.string "destination_contact"
    t.float "destination_latitude"
    t.float "destination_longitude"
    t.string "shipper_company_name"
    t.string "receiver_company_name"
    t.integer "driver_statement_id"
    t.integer "percentage_id"
    t.decimal "national_average_diesel_price"
    t.decimal "estimated_diesel_cost"
    t.decimal "truck_mpg", default: "5.5"
    t.date "truck_year"
    t.string "truck_number"
    t.string "truck_make"
    t.string "truck_model"
    t.string "truck_color"
    t.string "truck_plate"
    t.string "truck_state"
    t.string "truck_vin"
    t.string "trailer_number"
    t.date "trailer_year"
    t.string "trailer_make"
    t.string "trailer_type"
    t.string "trailer_length"
    t.string "trailer_plate"
    t.string "trailer_state"
    t.string "trailer_vin"
    t.string "trailer_door_type"
    t.decimal "pounds"
    t.decimal "kilos"
    t.boolean "is_pounds", default: false
    t.boolean "is_kilos", default: false
    t.boolean "is_hazmat", default: false
    t.boolean "is_temp_control", default: false
    t.boolean "is_fahrenheit", default: false
    t.boolean "is_celsius", default: false
    t.decimal "fahrenheit"
    t.decimal "celsius"
    t.decimal "kilometers"
    t.string "broker_rep_name"
    t.string "broker_rep_email"
    t.string "broker_rep_number"
    t.string "broker_rep_cell"
    t.string "broker_after_hours_instructions"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_profile_id"], name: "index_trips_on_company_profile_id"
    t.index ["company_user_id"], name: "index_trips_on_company_user_id"
    t.index ["driver_statement_id"], name: "index_trips_on_driver_statement_id"
    t.index ["driver_user_id"], name: "index_trips_on_driver_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
