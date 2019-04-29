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

ActiveRecord::Schema.define(version: 20190404082913) do

  create_table "blood_examination_reports", force: :cascade do |t|
    t.string   "hemoglobin"
    t.string   "total_rbc_count"
    t.string   "total_wbc_count"
    t.string   "ae_count"
    t.string   "platelet_count"
    t.string   "neutrophils"
    t.string   "lymphocytes"
    t.string   "eosinophils"
    t.string   "monocytes"
    t.string   "basophils"
    t.string   "esr"
    t.integer  "patient_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "gravindex_test_reports", force: :cascade do |t|
    t.string   "gravindex_test_report"
    t.integer  "patient_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "hiv_test_reports", force: :cascade do |t|
    t.string   "hiv_test1"
    t.string   "hiv_test2"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mountex_reports", force: :cascade do |t|
    t.string   "mountext_test"
    t.integer  "patient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "patient_testurls", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "test_id"
    t.string   "test_url"
    t.string   "status",     default: "inactive"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "age"
    t.date     "present_date"
    t.string   "mobile_no"
    t.string   "referred_by"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "patient_index"
    t.string   "slug"
    t.index ["slug"], name: "index_patients_on_slug", unique: true
  end

  create_table "somthings", force: :cascade do |t|
    t.string   "so"
    t.integer  "arun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stool_examinationreports", force: :cascade do |t|
    t.string   "color"
    t.string   "reaction"
    t.string   "viscosity"
    t.string   "mucous"
    t.string   "blood"
    t.string   "occult_blood"
    t.string   "ova"
    t.string   "cyst"
    t.integer  "patient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tests", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "testable_type"
    t.integer  "testable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["testable_type", "testable_id"], name: "index_tests_on_testable_type_and_testable_id"
  end

  create_table "urine_examination_reports", force: :cascade do |t|
    t.string   "colour"
    t.string   "appearance"
    t.string   "reaction"
    t.string   "specific_gravity"
    t.string   "phosphate"
    t.string   "albumin"
    t.string   "sugar"
    t.string   "ketone_bodies"
    t.string   "bile_salts"
    t.string   "bile_pigments"
    t.string   "urobilinogen"
    t.string   "bence_jones_proteins"
    t.string   "epithelial_cells"
    t.string   "pus_cells"
    t.string   "rbcs"
    t.string   "casts"
    t.string   "crystals"
    t.string   "mucus_threads"
    t.integer  "patient_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vdrl_tests", force: :cascade do |t|
    t.string   "vdrl_test"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                     null: false
    t.integer  "item_id",                       null: false
    t.string   "event",                         null: false
    t.string   "whodunnit"
    t.text     "object",     limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  create_table "widal_reaction_reports", force: :cascade do |t|
    t.string   "salmonella_typhi_o"
    t.string   "salmonella_typhi_h"
    t.string   "salmonella_para_typhi_ah"
    t.string   "salmonella_para_typhi_bh"
    t.string   "smear_for_mp"
    t.integer  "patient_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
