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

ActiveRecord::Schema.define(version: 2021_07_29_105715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "host_details", force: :cascade do |t|
    t.string "name"
    t.datetime "acceptable_date"
    t.integer "rate"
    t.string "description"
    t.string "link"
    t.string "address"
    t.decimal "latitude", precision: 10, scale: 6, null: false
    t.decimal "longitude", precision: 10, scale: 6, null: false
    t.string "tags"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "acceptable", default: 0
    t.string "marker_icon"
    t.string "image"
    t.integer "maximum_acceptability"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag"
    t.bigint "host_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["host_detail_id"], name: "index_tags_on_host_detail_id"
  end

  add_foreign_key "tags", "host_details"
end
