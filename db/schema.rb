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

ActiveRecord::Schema.define(version: 2020_03_11_060553) do

  create_table "hosts", force: :cascade do |t|
    t.integer "host_id"
    t.string "name"
    t.integer "number_of_listings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer "listing_id"
    t.string "name"
    t.integer "host_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "price"
    t.index ["host_id"], name: "index_listings_on_host_id"
  end

  create_table "locations", force: :cascade do |t|
    t.decimal "longtitude"
    t.decimal "latitude"
    t.string "area"
    t.integer "listing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_locations_on_listing_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_type"
    t.integer "minimum_night"
    t.integer "listing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_rooms_on_listing_id"
  end

  add_foreign_key "listings", "hosts"
  add_foreign_key "locations", "listings"
  add_foreign_key "rooms", "listings"
end
