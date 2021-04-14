# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_09_144815) do

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "cid"
    t.string "party"
    t.string "office"
    t.string "gender"
    t.string "birthdate"
    t.string "first_elected"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watcheds", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "member_id", null: false
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_watcheds_on_member_id"
    t.index ["user_id"], name: "index_watcheds_on_user_id"
  end

  add_foreign_key "watcheds", "members"
  add_foreign_key "watcheds", "users"
end
