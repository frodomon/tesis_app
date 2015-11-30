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

ActiveRecord::Schema.define(version: 20151130142250) do

  create_table "finnancial_entity_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finnancial_product_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lines", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "password_settings", force: true do |t|
    t.integer  "minLength"
    t.integer  "minLetters"
    t.integer  "minNumbers"
    t.integer  "duration"
    t.integer  "maxLoginFails"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_roles", id: false, force: true do |t|
    t.integer "permission_id"
    t.integer "role_id"
  end

  add_index "permissions_roles", ["permission_id"], name: "index_permissions_roles_on_permission_id", using: :btree
  add_index "permissions_roles", ["role_id"], name: "index_permissions_roles_on_role_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
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
    t.string   "lastNamePat"
    t.string   "lastNameMat"
    t.integer  "ubigeo_id"
    t.date     "birthDate"
    t.string   "genre",       limit: 1
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "userName"
    t.string   "password"
    t.date     "dueDate"
    t.float    "balancePEN"
    t.float    "balanceUSD"
    t.float    "salaryPEN"
    t.float    "salaryUSD"
    t.string   "status",      limit: 1
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["ubigeo_id"], name: "index_users_on_ubigeo_id", using: :btree

end
