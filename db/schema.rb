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

ActiveRecord::Schema.define(version: 20151031163627) do

  create_table "password_settings", force: true do |t|
    t.integer  "minLength"
    t.integer  "minLetters"
    t.integer  "minNumbers"
    t.integer  "duration"
    t.integer  "maxLoginFails"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubigeos", id: false, force: true do |t|
    t.integer  "user_id"
    t.integer  "ubigeo_id"
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ubigeos", ["user_id"], name: "index_ubigeos_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastName"
    t.integer  "ubigeo_id"
    t.date     "birthDate"
    t.string   "genre",      limit: 1
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "alias"
    t.float    "balance"
    t.string   "password"
    t.date     "dueDate"
    t.string   "status",     limit: 1
    t.integer  "profile_id"
    t.integer  "budget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["budget_id"], name: "index_users_on_budget_id", using: :btree
  add_index "users", ["profile_id"], name: "index_users_on_profile_id", using: :btree
  add_index "users", ["ubigeo_id"], name: "index_users_on_ubigeo_id", using: :btree

end
