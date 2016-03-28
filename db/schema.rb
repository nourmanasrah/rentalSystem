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

ActiveRecord::Schema.define(version: 20160327224716) do

  create_table "photos", force: :cascade do |t|
    t.integer  "room_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["room_id"], name: "index_photos_on_room_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "room_type"
    t.integer  "accommodate"
    t.integer  "num_bedroom"
    t.integer  "num_bed"
    t.string   "bldg_number"
    t.integer  "num_bathroom"
    t.string   "list_name"
    t.text     "summary"
    t.string   "country"
    t.string   "city"
    t.string   "street_address"
    t.integer  "nightly_price"
    t.integer  "weekly_price"
    t.integer  "monthly_price"
    t.integer  "service_fee"
    t.integer  "cleaing_fee"
    t.integer  "security_deposit"
    t.integer  "basic_fund"
    t.boolean  "is_restaurant"
    t.boolean  "is_store"
    t.boolean  "is_mall"
    t.boolean  "is_school"
    t.boolean  "is_gym"
    t.boolean  "is_park"
    t.boolean  "is_gas_station"
    t.boolean  "is_daycare"
    t.boolean  "is_collage"
    t.boolean  "is_hypermarket"
    t.boolean  "is_transportation"
    t.boolean  "is_hospital"
    t.boolean  "is_health_center"
    t.boolean  "is_indoor_fireplace"
    t.boolean  "is_doorman"
    t.boolean  "is_breakfast"
    t.boolean  "is_coffeeshop"
    t.boolean  "is_dryer"
    t.boolean  "is_washer"
    t.boolean  "is_family_friens"
    t.boolean  "is_home_gym"
    t.boolean  "is_hot_tub"
    t.boolean  "is_hangers"
    t.boolean  "is_hair_dryer"
    t.boolean  "is_iron"
    t.boolean  "is_essentials"
    t.boolean  "is_suitable_for_events"
    t.boolean  "is_internet"
    t.boolean  "is_tv"
    t.boolean  "is_hour_check_in"
    t.boolean  "is_pool"
    t.boolean  "is_pets_allowed"
    t.boolean  "is_wheelchair_accessible"
    t.boolean  "is_shampoo"
    t.boolean  "is_heating"
    t.boolean  "is_smoking_allowed"
    t.boolean  "is_air_conditioning"
    t.boolean  "is_elevator"
    t.boolean  "is_fan"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "is_kitchen"
    t.text     "home_rules"
    t.string   "cancellation"
    t.string   "property_type"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "rooms", ["user_id"], name: "index_rooms_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "fullname"
    t.string   "fname"
    t.string   "lname"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "phone_number"
    t.text     "description"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
