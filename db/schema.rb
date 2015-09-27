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

ActiveRecord::Schema.define(version: 20150924203922) do

  create_table "passwords", force: true do |t|
    t.string   "password"
    t.date     "dueDate"
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

  create_table "user_passwords", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "password_id"
  end

  add_index "user_passwords", ["password_id"], name: "index_user_passwords_on_password_id", using: :btree
  add_index "user_passwords", ["user_id"], name: "index_user_passwords_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastName"
    t.integer  "ubigeo_id"
    t.date     "birthDate"
    t.integer  "genre"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "alias"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
