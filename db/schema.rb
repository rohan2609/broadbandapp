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

ActiveRecord::Schema.define(version: 20170630183544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "customer_attachments", force: :cascade do |t|
    t.string "file"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_attachments_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "fullname"
    t.string "mobile_no"
    t.string "alternate_no"
    t.string "email"
    t.string "access_token"
    t.string "file"
    t.string "file_file_name"
    t.date "date"
    t.boolean "status"
    t.string "address1"
    t.string "address2"
    t.string "customer_number"
    t.string "pincode"
    t.string "plan_start_date"
    t.string "plan_expiry_date"
    t.bigint "plan_id"
    t.bigint "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_filename"
    t.string "file_content_type"
    t.string "file_file_size"
    t.string "file_updated_at"
    t.string "image"
    t.index ["payment_id"], name: "index_customers_on_payment_id"
    t.index ["plan_id"], name: "index_customers_on_plan_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact_no"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offline_payment_histories", force: :cascade do |t|
    t.bigint "offline_payment_id"
    t.bigint "plan_id"
    t.bigint "customer_id"
    t.string "cash"
    t.string "check"
    t.string "bank_name"
    t.string "check_number"
    t.string "amount_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_offline_payment_histories_on_customer_id"
    t.index ["offline_payment_id"], name: "index_offline_payment_histories_on_offline_payment_id"
    t.index ["plan_id"], name: "index_offline_payment_histories_on_plan_id"
  end

  create_table "offline_payments", force: :cascade do |t|
    t.bigint "plan_id"
    t.bigint "customer_id"
    t.string "cash"
    t.string "check"
    t.string "bank_name"
    t.string "check_number"
    t.string "amount_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_offline_payments_on_customer_id"
    t.index ["plan_id"], name: "index_offline_payments_on_plan_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "mihpayid"
    t.string "txnid"
    t.string "status"
    t.string "unmappedstatus"
    t.string "amount"
    t.string "cardCategory"
    t.string "email"
    t.string "name_on_card"
    t.string "issuing_bank"
    t.string "payment_mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "plan_name"
    t.string "plan_price"
    t.string "plan_rate"
    t.string "no_of_days"
    t.string "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_customers", force: :cascade do |t|
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_user_customers_on_customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "customer_attachments", "customers"
  add_foreign_key "offline_payment_histories", "customers"
  add_foreign_key "offline_payment_histories", "offline_payments"
  add_foreign_key "offline_payment_histories", "plans"
  add_foreign_key "offline_payments", "customers"
  add_foreign_key "offline_payments", "plans"
  add_foreign_key "user_customers", "customers"
end
