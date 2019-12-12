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

ActiveRecord::Schema.define(version: 2019_12_11_194431) do

  create_table "appointments", force: :cascade do |t|
    t.integer "lead_id", null: false
    t.string "title"
    t.date "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "presentation_made?", default: false
    t.boolean "made_sale?", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lead_id"], name: "index_appointments_on_lead_id"
  end

  create_table "calls", force: :cascade do |t|
    t.integer "lead_id", null: false
    t.string "call_status"
    t.boolean "appointment_made?", default: false
    t.boolean "archive_lead?", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lead_id"], name: "index_calls_on_lead_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "phone_number"
    t.string "beneficiary_information"
    t.date "date_of_birth"
    t.boolean "referral_made?", default: false
    t.string "referral_from"
    t.boolean "sale_made?", default: false
    t.boolean "lead_archived?", default: false
    t.decimal "latitude", precision: 10, scale: 6, default: "0.0"
    t.decimal "longitude", precision: 10, scale: 6, default: "0.0"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_leads_on_user_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "lead_id", null: false
    t.float "annualized_life_premium", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lead_id"], name: "index_sales_on_lead_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company_name"
    t.decimal "latitude", precision: 10, scale: 6, default: "0.0"
    t.decimal "longitude", precision: 10, scale: 6, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "leads"
  add_foreign_key "calls", "leads"
  add_foreign_key "leads", "users"
  add_foreign_key "sales", "leads"
end
