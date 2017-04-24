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

ActiveRecord::Schema.define(version: 20170424132917) do

  create_table "achievements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "notes",      limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["profile_id"], name: "index_achievements_on_profile_id", using: :btree
  end

  create_table "bloods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "education_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "relation"
    t.string   "phone"
    t.text     "address",    limit: 65535
    t.date     "birth_date"
    t.integer  "education"
    t.string   "job"
    t.integer  "profile_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["profile_id"], name: "index_families_on_profile_id", using: :btree
  end

  create_table "family_relations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formal_educations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "level"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "certificate"
    t.string   "faculty"
    t.string   "department"
    t.text     "notes",       limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["profile_id"], name: "index_formal_educations_on_profile_id", using: :btree
  end

  create_table "job_experiences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "company_name"
    t.string   "company_address"
    t.string   "company_phone"
    t.string   "job_title"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "job_description",       limit: 65535
    t.text     "reason_of_resignation", limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["profile_id"], name: "index_job_experiences_on_profile_id", using: :btree
  end

  create_table "language_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "note",       limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "speech"
    t.integer  "writing"
    t.integer  "reading"
    t.index ["profile_id"], name: "index_languages_on_profile_id", using: :btree
  end

  create_table "married_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "field"
    t.string   "location"
    t.integer  "year"
    t.string   "position"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_organizations_on_profile_id", using: :btree
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "id_no"
    t.string   "nationality"
    t.string   "tribe"
    t.string   "birth_place"
    t.date     "birth_date"
    t.integer  "age"
    t.float    "height",          limit: 24
    t.float    "weight",          limit: 24
    t.string   "blood"
    t.integer  "sex"
    t.integer  "married"
    t.string   "religion"
    t.text     "id_address",      limit: 65535
    t.text     "current_address", limit: 65535
    t.string   "email"
    t.string   "phone"
    t.string   "mobile_phone"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "scientifc_works", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "notes",      limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["profile_id"], name: "index_scientifc_works_on_profile_id", using: :btree
  end

  create_table "scientific_works", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "notes",      limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["profile_id"], name: "index_scientific_works_on_profile_id", using: :btree
  end

  create_table "sexes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "organizer"
    t.string   "location"
    t.date     "year"
    t.string   "certificate"
    t.text     "notes",       limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["profile_id"], name: "index_trainings_on_profile_id", using: :btree
  end

  create_table "travellings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "country"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "objective",  limit: 65535
    t.integer  "profile_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["profile_id"], name: "index_travellings_on_profile_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "achievements", "profiles"
  add_foreign_key "families", "profiles"
  add_foreign_key "formal_educations", "profiles"
  add_foreign_key "job_experiences", "profiles"
  add_foreign_key "languages", "profiles"
  add_foreign_key "organizations", "profiles"
  add_foreign_key "scientific_works", "profiles"
  add_foreign_key "trainings", "profiles"
  add_foreign_key "travellings", "profiles"
end
