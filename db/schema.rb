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

ActiveRecord::Schema.define(version: 20150125190656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directions", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "province_id"
    t.integer  "township_id"
    t.integer  "district_id"
  end

  add_index "directions", ["district_id"], name: "index_directions_on_district_id", using: :btree
  add_index "directions", ["province_id"], name: "index_directions_on_province_id", using: :btree
  add_index "directions", ["township_id"], name: "index_directions_on_township_id", using: :btree

  create_table "districts", force: true do |t|
    t.string  "name"
    t.integer "township_id"
    t.integer "code"
  end

  add_index "districts", ["township_id"], name: "index_districts_on_township_id", using: :btree

  create_table "provinces", force: true do |t|
    t.string  "name"
    t.integer "code"
  end

  create_table "requests", id: false, force: true do |t|
    t.datetime "pick_date"
    t.datetime "deliver_date"
    t.integer  "budget"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "direction_to_pick_id"
    t.integer  "direction_to_deliver_id"
  end

  add_index "requests", ["direction_to_deliver_id"], name: "index_requests_on_direction_to_deliver_id", using: :btree
  add_index "requests", ["direction_to_pick_id"], name: "index_requests_on_direction_to_pick_id", using: :btree
  add_index "requests", ["user_id"], name: "index_requests_on_user_id", using: :btree

  create_table "townships", force: true do |t|
    t.string  "name"
    t.integer "province_id"
    t.integer "code"
  end

  add_index "townships", ["province_id"], name: "index_townships_on_province_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
