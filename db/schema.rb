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

ActiveRecord::Schema[7.1].define(version: 2024_04_20_045838) do
  create_table "computers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motherboards", force: :cascade do |t|
    t.string "name"
    t.string "processor_supported"
    t.string "ram_supported"
    t.integer "slot"
    t.boolean "integrated_video"
    t.integer "computer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_motherboards_on_computer_id"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "valid"
    t.integer "customer_id", null: false
    t.integer "computer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_orders_on_computer_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "processors", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.integer "computer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_processors_on_computer_id"
  end

  create_table "rams", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.integer "computer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_rams_on_computer_id"
  end

  create_table "video_cards", force: :cascade do |t|
    t.string "name"
    t.integer "computer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_video_cards_on_computer_id"
  end

  add_foreign_key "motherboards", "computers"
  add_foreign_key "orders", "computers"
  add_foreign_key "orders", "customers"
  add_foreign_key "processors", "computers"
  add_foreign_key "rams", "computers"
  add_foreign_key "video_cards", "computers"
end
