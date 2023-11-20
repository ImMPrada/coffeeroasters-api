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

ActiveRecord::Schema[7.1].define(version: 2023_11_20_140047) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "preference_presentations", force: :cascade do |t|
    t.bigint "preference_id", null: false
    t.bigint "presentation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["preference_id"], name: "index_preference_presentations_on_preference_id"
    t.index ["presentation_id"], name: "index_preference_presentations_on_presentation_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.text "title", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presentations", force: :cascade do |t|
    t.text "title", null: false
    t.text "description", null: false
    t.integer "amount", null: false
    t.bigint "unit_id", null: false
    t.decimal "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_presentations_on_unit_id"
  end

  create_table "types", force: :cascade do |t|
    t.text "title", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "used_symbol", null: false
    t.text "description"
    t.decimal "grames", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "preference_presentations", "preferences"
  add_foreign_key "preference_presentations", "presentations"
  add_foreign_key "presentations", "units"
end
