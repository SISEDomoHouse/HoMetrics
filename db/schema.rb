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

ActiveRecord::Schema.define(version: 20180427004238) do

  create_table "actuators", force: :cascade do |t|
    t.integer "node_id"
    t.boolean "state"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "room_id"
    t.index ["node_id"], name: "index_actuators_on_node_id"
    t.index ["room_id"], name: "index_actuators_on_room_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "address"
    t.string "stratum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "house_id"
    t.integer "user_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_memberships_on_house_id"
    t.index ["user_category_id"], name: "index_memberships_on_user_category_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_rooms_on_house_id"
  end

  create_table "sensor_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensors", force: :cascade do |t|
    t.string "name"
    t.integer "sensor_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "comment"
    t.integer "room_id"
    t.index ["room_id"], name: "index_sensors_on_room_id"
    t.index ["sensor_category_id"], name: "index_sensors_on_sensor_category_id"
  end

  create_table "user_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "values", force: :cascade do |t|
    t.float "value"
    t.integer "sensor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensor_id"], name: "index_values_on_sensor_id"
  end

end
