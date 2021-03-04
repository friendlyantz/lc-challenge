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

ActiveRecord::Schema.define(version: 2021_03_04_030736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "feature_id"
    t.bigint "property_id", null: false
    t.string "full_address"
    t.bigint "lgasfile_id", null: false
    t.string "state"
    t.integer "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lgasfile_id"], name: "index_addresses_on_lgasfile_id"
    t.index ["property_id"], name: "index_addresses_on_property_id"
  end

  create_table "lgasfiles", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.string "long_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer "lc_id"
    t.bigint "lgasfile_id", null: false
    t.bigint "council_property_number"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lgasfile_id"], name: "index_properties_on_lgasfile_id"
  end

  add_foreign_key "addresses", "lgasfiles"
  add_foreign_key "addresses", "properties"
  add_foreign_key "properties", "lgasfiles"
end
