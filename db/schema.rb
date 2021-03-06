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

ActiveRecord::Schema.define(version: 20170120184403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.integer  "account_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "accounts", ["account_type_id"], name: "index_accounts_on_account_type_id", using: :btree

  create_table "balances", force: :cascade do |t|
    t.integer  "account_id"
    t.date     "date"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "balances", ["account_id"], name: "index_balances_on_account_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "start_date",                         null: false
    t.date     "end_date"
    t.boolean  "billable",            default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "direct_experience",   default: 0,    null: false
    t.integer  "indirect_experience", default: 0,    null: false
    t.decimal  "starting_salary",     default: 0.0,  null: false
    t.text     "notes"
  end

  create_table "salaries", force: :cascade do |t|
    t.date     "start_date",    null: false
    t.integer  "employee_id",   null: false
    t.decimal  "annual_amount", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "salaries", ["employee_id"], name: "index_salaries_on_employee_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id", "invited_by_type"], name: "index_users_on_invited_by_id_and_invited_by_type", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "balances", "accounts"
  add_foreign_key "salaries", "employees", name: "salaries_employee_id_fk"
end
