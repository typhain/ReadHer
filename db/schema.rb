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

ActiveRecord::Schema.define(version: 2019_09_09_173639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crush_libraries", force: :cascade do |t|
    t.bigint "crush_id"
    t.bigint "library_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crush_id"], name: "index_crush_libraries_on_crush_id"
    t.index ["library_id"], name: "index_crush_libraries_on_library_id"
  end

  create_table "crushes", force: :cascade do |t|
    t.string "book_title"
    t.string "genre"
    t.string "author_name"
    t.string "author_country"
    t.string "description"
    t.string "quote"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_crushes_on_user_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_libraries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "last_name"
    t.string "first_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "crush_libraries", "crushes"
  add_foreign_key "crush_libraries", "libraries"
  add_foreign_key "crushes", "users"
  add_foreign_key "libraries", "users"
end
