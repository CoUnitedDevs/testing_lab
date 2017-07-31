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

ActiveRecord::Schema.define(version: 20170720115751) do

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

  create_table "patient_examination_reports", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "hemoglobin_id"
    t.integer  "total_rbc_count_id"
    t.integer  "total_wbc_count_id"
    t.integer  "ae_count_id"
    t.integer  "platelet_count_id"
    t.integer  "neutrophils_id"
    t.integer  "lymphocytes_id"
    t.integer  "eosinophils_id"
    t.integer  "monocytes_id"
    t.integer  "basophils_id"
    t.integer  "esr_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "patient_stool_examination_reports", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "color_id"
    t.integer  "reaction_id"
    t.integer  "viscosity_id"
    t.integer  "mucous_id"
    t.integer  "blood_id"
    t.integer  "occult_blood_id"
    t.integer  "ova_id"
    t.integer  "cyst_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "patient_testurls", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "test_id"
    t.string   "test_url"
    t.string   "status",     default: "inactive"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "patient_urine_examination_reports", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "colour_id"
    t.integer  "appearance_id"
    t.integer  "reaction_id"
    t.integer  "specific_gravity_id"
    t.integer  "phosphate_id"
    t.integer  "albumin_id"
    t.integer  "sugar_id"
    t.integer  "ketone_bodies_id"
    t.integer  "bile_salts_id"
    t.integer  "bile_pigments_id"
    t.integer  "urobilinogen_id"
    t.integer  "bence_jones_proteins_id"
    t.integer  "epithelial_cells_id"
    t.integer  "pus_cells_id"
    t.integer  "rbcs_id"
    t.integer  "casts_id"
    t.integer  "crystals_id"
    t.integer  "mucus_threads_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "patient_widal_reaction_reports", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "salmonella_typhi_o_id"
    t.integer  "salmonella_typhi_h_id"
    t.integer  "salmonella_para_typhi_ah_id"
    t.integer  "salmonella_para_typhi_bh_id"
    t.integer  "smear_for_mp_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
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
