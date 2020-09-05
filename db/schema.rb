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

ActiveRecord::Schema.define(version: 2020_09_03_143503) do

  create_table "customer_groups", force: :cascade do |t|
    t.string "Customer_Group__Name_English"
    t.string "Customer_Group__Name_Chinese"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_groups_customers", id: false, force: :cascade do |t|
    t.integer "customer_group_id", null: false
    t.integer "customer_id", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "English_name"
    t.string "Chinese_name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "updates", force: :cascade do |t|
    t.text "comment"
    t.integer "customer_id", null: false
    t.datetime "update_time"
    t.datetime "happened_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_updates_on_customer_id"
  end

  add_foreign_key "updates", "customers"
end
