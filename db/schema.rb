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

ActiveRecord::Schema.define(version: 20150831003119) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "xp"
    t.integer  "gold"
    t.string   "hair"
    t.string   "skin"
    t.string   "shirt"
    t.string   "pants"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "level"
    t.string   "helmet"
    t.string   "armor"
    t.string   "shield"
    t.string   "weapon"
    t.integer  "correct"
    t.integer  "wrong"
  end

  add_index "characters", ["User_id"], name: "index_characters_on_User_id"

  create_table "done_lessons", force: :cascade do |t|
    t.integer  "Lesson_id"
    t.integer  "Character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "score"
  end

  add_index "done_lessons", ["Character_id"], name: "index_done_lessons_on_Character_id"
  add_index "done_lessons", ["Lesson_id"], name: "index_done_lessons_on_Lesson_id"

  create_table "inventories", force: :cascade do |t|
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "inventories", ["User_id"], name: "index_inventories_on_User_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "img"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "part"
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "url"
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "Item_id"
    t.integer  "Inventory_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "line_items", ["Inventory_id"], name: "index_line_items_on_Inventory_id"
  add_index "line_items", ["Item_id"], name: "index_line_items_on_Item_id"

  create_table "questions", force: :cascade do |t|
    t.string   "lesson"
    t.text     "statement"
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
