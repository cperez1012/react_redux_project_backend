# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_26_143921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fighters", force: :cascade do |t|
    t.string "name"
    t.string "alias"
    t.string "nationality"
    t.string "division"
    t.string "stance"
    t.string "height"
    t.string "reach"
    t.string "status"
    t.boolean "champion"
    t.integer "win"
    t.integer "loss"
    t.integer "draw"
    t.integer "ko"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "list_id"
    t.index ["list_id"], name: "index_fighters_on_list_id"
  end

  create_table "fighters_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "fighter_id", null: false
    t.index ["fighter_id", "user_id"], name: "index_fighters_users_on_fighter_id_and_user_id"
    t.index ["user_id", "fighter_id"], name: "index_fighters_users_on_user_id_and_fighter_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "image_url"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "fighter_id"
  end

  add_foreign_key "fighters", "lists"
  add_foreign_key "lists", "users"
end
