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

ActiveRecord::Schema.define(version: 2020_05_04_145810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aliyos", force: :cascade do |t|
    t.integer "aliyah_number", null: false
    t.integer "parsha_id"
    t.integer "start_perek_id"
    t.integer "start_pasuk_id"
    t.integer "end_perek_id"
    t.integer "end_pasuk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parsha_id"], name: "index_aliyos_on_parsha_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title_en", null: false
    t.string "title_he", null: false
    t.string "title_he_tr", null: false
    t.string "description", null: false
    t.integer "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_books_on_section_id"
  end

  create_table "parshios", force: :cascade do |t|
    t.string "title_en", null: false
    t.string "title_he", null: false
    t.string "title_he_tr", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perakim", force: :cascade do |t|
    t.integer "perek_number", null: false
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_perakim_on_book_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title_en", null: false
    t.string "title_he", null: false
    t.string "title_he_tr", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
