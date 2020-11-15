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

ActiveRecord::Schema.define(version: 2020_11_13_015802) do

  create_table "addresses", force: :cascade do |t|
    t.integer "city_id", null: false
    t.string "Address_English"
    t.string "Address_Chinese"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "instrument_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
    t.index ["instrument_id"], name: "index_addresses_on_instrument_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "City_Chinese_Name"
    t.string "City_English_Name"
    t.integer "province_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "complain_statuses", force: :cascade do |t|
    t.string "Status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "complaint_updates", force: :cascade do |t|
    t.integer "complaint_id", null: false
    t.text "Description"
    t.integer "complain_status_id"
    t.datetime "Last_Updated_On"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["complain_status_id"], name: "index_complaint_updates_on_complain_status_id"
    t.index ["complaint_id"], name: "index_complaint_updates_on_complaint_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.string "SAP_Complaint_Notification_Number"
    t.string "Short_Description"
    t.integer "complain_status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "Description"
    t.index ["complain_status_id"], name: "index_complaints_on_complain_status_id"
  end

  create_table "contact_people", force: :cascade do |t|
    t.string "English_Family_Name"
    t.string "Chinese_Family_Name"
    t.string "English_Given_Name"
    t.string "Chinese_Given_Name"
    t.string "English_Middle_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tag"
  end

  create_table "contact_people_customers", id: false, force: :cascade do |t|
    t.integer "contact_person_id", null: false
    t.integer "customer_id", null: false
  end

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

  create_table "emails", force: :cascade do |t|
    t.string "Email_Address"
    t.integer "contact_person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_person_id"], name: "index_emails_on_contact_person_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.integer "material_id", null: false
    t.string "Equipment_Number"
    t.text "commont"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_instruments_on_customer_id"
    t.index ["material_id"], name: "index_instruments_on_material_id"
  end

  create_table "instruments_software_versions", id: false, force: :cascade do |t|
    t.integer "instrument_id", null: false
    t.integer "software_version_id", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "English_Name"
    t.string "Chinese_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "material_types", force: :cascade do |t|
    t.string "Material_Number"
    t.text "Description_English"
    t.text "Description_Chinese"
    t.integer "manufacturer_id", null: false
    t.float "Price_CLP_RMB"
    t.float "Price_CLP_USD"
    t.float "Price_GBP_USD"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manufacturer_id"], name: "index_material_types_on_manufacturer_id"
  end

  create_table "material_types_product_lines", id: false, force: :cascade do |t|
    t.integer "product_line_id", null: false
    t.integer "material_type_id", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.integer "material_type_id", null: false
    t.string "Lot_Or_Serial_Number"
    t.date "Manufacture_Date"
    t.date "Expiration_Date"
    t.text "Comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "Phone_Number"
    t.integer "contact_person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_person_id"], name: "index_phones_on_contact_person_id"
  end

  create_table "product_lines", force: :cascade do |t|
    t.string "Product_Name"
    t.string "Product_Full_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "Province_Chinese_Name"
    t.string "Province_English_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_contract_types", force: :cascade do |t|
    t.string "Name"
    t.text "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_contracts", force: :cascade do |t|
    t.integer "instrument_id", null: false
    t.string "SAP_ServiceContract_Number"
    t.date "Start_Date"
    t.date "End_Date"
    t.integer "service_contract_type_id", null: false
    t.float "price"
    t.text "Comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instrument_id"], name: "index_service_contracts_on_instrument_id"
    t.index ["service_contract_type_id"], name: "index_service_contracts_on_service_contract_type_id"
  end

  create_table "service_people", force: :cascade do |t|
    t.integer "contact_person_id", null: false
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_person_id"], name: "index_service_people_on_contact_person_id"
  end

  create_table "software_versions", force: :cascade do |t|
    t.string "Software_Name"
    t.string "Version_Number"
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

  create_table "work_order_duration_types", force: :cascade do |t|
    t.string "SAP_Material_Number"
    t.string "SAP_Code"
    t.string "SAP_Description"
    t.string "ServiceMax_Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_order_durations", force: :cascade do |t|
    t.integer "work_order_id", null: false
    t.integer "work_order_duration_type_id", null: false
    t.float "Actual_Time"
    t.datetime "Actual_Start_Date"
    t.datetime "Actual_End_Date"
    t.text "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["work_order_duration_type_id"], name: "index_work_order_durations_on_work_order_duration_type_id"
    t.index ["work_order_id"], name: "index_work_order_durations_on_work_order_id"
  end

  create_table "work_order_statuses", force: :cascade do |t|
    t.string "Status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_order_types", force: :cascade do |t|
    t.string "Work_Type_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_orders", force: :cascade do |t|
    t.string "SAP_WorkOrder_Number"
    t.string "ServiceMax_WorkOrder_Number"
    t.integer "instrument_id", null: false
    t.integer "customer_id", null: false
    t.integer "service_person_id", null: false
    t.text "details"
    t.integer "work_order_status_id", null: false
    t.float "Cost_SAP"
    t.float "Cost_ServiceMax"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Short_Description"
    t.index ["customer_id"], name: "index_work_orders_on_customer_id"
    t.index ["instrument_id"], name: "index_work_orders_on_instrument_id"
    t.index ["service_person_id"], name: "index_work_orders_on_service_person_id"
    t.index ["work_order_status_id"], name: "index_work_orders_on_work_order_status_id"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "instruments"
  add_foreign_key "cities", "provinces"
  add_foreign_key "complaint_updates", "complain_statuses"
  add_foreign_key "complaint_updates", "complaints"
  add_foreign_key "complaints", "complain_statuses"
  add_foreign_key "emails", "contact_people"
  add_foreign_key "instruments", "customers"
  add_foreign_key "instruments", "materials"
  add_foreign_key "material_types", "manufacturers"
  add_foreign_key "materials", "Material_Types", column: "material_type_id"
  add_foreign_key "phones", "contact_people"
  add_foreign_key "service_contracts", "instruments"
  add_foreign_key "service_contracts", "service_contract_types"
  add_foreign_key "service_people", "contact_people"
  add_foreign_key "updates", "customers"
  add_foreign_key "work_order_durations", "work_order_duration_types"
  add_foreign_key "work_order_durations", "work_orders"
  add_foreign_key "work_orders", "customers"
  add_foreign_key "work_orders", "instruments"
  add_foreign_key "work_orders", "service_people"
  add_foreign_key "work_orders", "work_order_statuses"
end
