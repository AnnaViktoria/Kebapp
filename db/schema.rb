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

ActiveRecord::Schema.define(version: 2019_08_27_131237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kebab_shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.float "rating"
    t.float "price"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "price"
    t.bigint "kebab_shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kebab_shop_id"], name: "index_menus_on_kebab_shop_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.bigint "kebab_shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.index ["kebab_shop_id"], name: "index_reviews_on_kebab_shop_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "weekday"
    t.integer "opening_hour"
    t.integer "closing_hour"
    t.bigint "kebab_shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kebab_shop_id"], name: "index_schedules_on_kebab_shop_id"
  end

  add_foreign_key "menus", "kebab_shops"
  add_foreign_key "reviews", "kebab_shops"
  add_foreign_key "schedules", "kebab_shops"
end
