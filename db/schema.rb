ActiveRecord::Schema[7.1].define(version: 2024_04_23_204242) do
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
    t.integer "ram_supported"
    t.integer "slot"
    t.boolean "integrated_video"
    t.integer "computer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_motherboards_on_computer_id"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "order_valid"
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
    t.integer "computer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_processors_on_computer_id"
  end

  create_table "rams", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.integer "computer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_rams_on_computer_id"
  end

  create_table "video_cards", force: :cascade do |t|
    t.string "name"
    t.integer "computer_id"
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
