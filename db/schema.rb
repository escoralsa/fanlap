# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160524091930) do

  create_table "activities", force: :cascade do |t|
    t.datetime "date"
    t.text     "description", limit: 65535
    t.integer  "employee_id", limit: 4
    t.integer  "ticket_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",     limit: 4
  end

  add_index "activities", ["employee_id"], name: "index_activities_on_employee_id", using: :btree
  add_index "activities", ["ticket_id"], name: "index_activities_on_ticket_id", using: :btree
  add_index "activities", ["user_id"], name: "index_activities_on_user_id", using: :btree

  create_table "appliances", force: :cascade do |t|
    t.integer  "storeNumbre", limit: 4
    t.string   "name",        limit: 255
    t.string   "intIp",       limit: 255
    t.string   "extIp",       limit: 255
    t.string   "brand",       limit: 255
    t.string   "model",       limit: 255
    t.string   "user",        limit: 255
    t.string   "password",    limit: 255
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "appliances", ["customer_id"], name: "index_appliances_on_customer_id", using: :btree

  create_table "applications", force: :cascade do |t|
    t.date     "date"
    t.string   "school_name",       limit: 255
    t.string   "school_year",       limit: 255
    t.string   "grade",             limit: 255
    t.float    "score",             limit: 24
    t.boolean  "other_scholarship"
    t.string   "from",              limit: 255
    t.float    "amount",            limit: 24
    t.boolean  "approved"
    t.text     "notes",             limit: 65535
    t.integer  "student_id",        limit: 4
    t.integer  "sponsor_id",        limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "level",             limit: 255
  end

  add_index "applications", ["sponsor_id"], name: "index_applications_on_sponsor_id", using: :btree
  add_index "applications", ["student_id"], name: "index_applications_on_student_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "adress",      limit: 65535
    t.string   "phone",       limit: 255
    t.string   "contact",     limit: 255
    t.string   "rfc",         limit: 255
    t.string   "email",       limit: 255
    t.string   "ip",          limit: 255
    t.text     "server",      limit: 65535
    t.boolean  "datacenter"
    t.string   "vpacesetter", limit: 255
    t.string   "vprogress",   limit: 255
    t.integer  "userNumber",  limit: 4
    t.string   "catalog",     limit: 255
    t.string   "softwareC",   limit: 255
    t.text     "programesp",  limit: 65535
    t.text     "emailpdf",    limit: 65535
    t.text     "emailxml",    limit: 65535
    t.boolean  "pdf"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "month",      limit: 255
    t.integer  "year",       limit: 4
    t.float    "amount",     limit: 24
    t.integer  "student_id", limit: 4
    t.integer  "item_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "expenses", ["item_id"], name: "index_expenses_on_item_id", using: :btree
  add_index "expenses", ["student_id"], name: "index_expenses_on_student_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "scores", force: :cascade do |t|
    t.string   "month",      limit: 255
    t.integer  "year",       limit: 4
    t.float    "score",      limit: 24
    t.integer  "student_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "scores", ["student_id"], name: "index_scores_on_student_id", using: :btree

  create_table "situations", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "notes",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "st_number",   limit: 4
    t.string   "last_name",   limit: 255
    t.string   "slast_name",  limit: 255
    t.string   "names",       limit: 255
    t.date     "birthdate"
    t.string   "gender",      limit: 255
    t.text     "address",     limit: 65535
    t.string   "map_link",    limit: 255
    t.string   "phone",       limit: 255
    t.string   "father_name", limit: 255
    t.string   "father_work", limit: 255
    t.string   "mother_name", limit: 255
    t.string   "mother_work", limit: 255
    t.integer  "sibling",     limit: 4
    t.string   "colonia",     limit: 255
    t.string   "city",        limit: 255
    t.string   "zip_code",    limit: 255
    t.string   "foto",        limit: 255
    t.string   "shoe_size",   limit: 255
    t.string   "tshirt_size", limit: 255
    t.string   "email",       limit: 255
    t.string   "profession",  limit: 255
    t.string   "notes",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "date"
    t.string   "contactName",  limit: 255
    t.text     "notes",        limit: 65535
    t.integer  "employee_id",  limit: 4
    t.integer  "customer_id",  limit: 4
    t.integer  "priority_id",  limit: 4
    t.integer  "situation_id", limit: 4
    t.integer  "category_id",  limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id",      limit: 4
    t.string   "image",        limit: 255
  end

  add_index "tickets", ["category_id"], name: "index_tickets_on_category_id", using: :btree
  add_index "tickets", ["customer_id"], name: "index_tickets_on_customer_id", using: :btree
  add_index "tickets", ["employee_id"], name: "index_tickets_on_employee_id", using: :btree
  add_index "tickets", ["priority_id"], name: "index_tickets_on_priority_id", using: :btree
  add_index "tickets", ["situation_id"], name: "index_tickets_on_situation_id", using: :btree
  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "activities", "employees"
  add_foreign_key "activities", "tickets"
  add_foreign_key "activities", "users"
  add_foreign_key "appliances", "customers"
  add_foreign_key "applications", "sponsors"
  add_foreign_key "applications", "students"
  add_foreign_key "expenses", "items"
  add_foreign_key "expenses", "students"
  add_foreign_key "scores", "students"
  add_foreign_key "tickets", "categories"
  add_foreign_key "tickets", "customers"
  add_foreign_key "tickets", "employees"
  add_foreign_key "tickets", "priorities"
  add_foreign_key "tickets", "situations"
  add_foreign_key "tickets", "users"
end
