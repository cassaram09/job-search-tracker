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

ActiveRecord::Schema.define(version: 20161122150657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.integer  "size"
    t.string   "industry"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id", using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "website"
    t.string   "job_title"
    t.string   "job_description"
    t.integer  "connection_degree"
    t.integer  "connection_strength"
    t.integer  "company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["company_id"], name: "index_contacts_on_company_id", using: :btree
  end

  create_table "job_actions", force: :cascade do |t|
    t.integer  "action"
    t.integer  "company_id"
    t.integer  "contact_id"
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_job_actions_on_company_id", using: :btree
    t.index ["contact_id"], name: "index_job_actions_on_contact_id", using: :btree
    t.index ["job_id"], name: "index_job_actions_on_job_id", using: :btree
    t.index ["user_id"], name: "index_job_actions_on_user_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "job_title"
    t.string   "job_description"
    t.string   "link"
    t.integer  "company_id"
    t.integer  "contact_id"
    t.string   "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["company_id"], name: "index_jobs_on_company_id", using: :btree
    t.index ["contact_id"], name: "index_jobs_on_contact_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
