# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_20_155428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adopters", force: :cascade do |t|
    t.string "name", null: false
    t.string "dni"
    t.string "address", null: false
    t.string "phone"
    t.string "social_net"
    t.text "observations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age"
    t.integer "sex"
    t.string "color"
    t.date "entry_at", null: false
    t.integer "condition"
    t.integer "personality"
    t.integer "chip"
    t.string "hosted_in"
    t.text "observations"
    t.bigint "shelter_id", null: false
    t.bigint "rescued_from_id", null: false
    t.bigint "adopter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adopter_id"], name: "index_animals_on_adopter_id"
    t.index ["rescued_from_id"], name: "index_animals_on_rescued_from_id"
    t.index ["shelter_id"], name: "index_animals_on_shelter_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "county", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_histories", force: :cascade do |t|
    t.bigint "animal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_medical_histories_on_animal_id"
  end

  create_table "procedures", force: :cascade do |t|
    t.date "date", null: false
    t.text "note"
    t.boolean "done", default: false
    t.bigint "treatment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["treatment_id"], name: "index_procedures_on_treatment_id"
  end

  create_table "rescued_froms", force: :cascade do |t|
    t.date "date"
    t.string "address"
    t.text "observations"
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_rescued_froms_on_location_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suffereded_diseases", force: :cascade do |t|
    t.date "started_at"
    t.boolean "discharged", default: false
    t.bigint "disease_id", null: false
    t.bigint "medical_history_id", null: false
    t.bigint "veterinary_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disease_id"], name: "index_suffereded_diseases_on_disease_id"
    t.index ["medical_history_id"], name: "index_suffereded_diseases_on_medical_history_id"
    t.index ["veterinary_id"], name: "index_suffereded_diseases_on_veterinary_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "treatment_type", null: false
    t.text "observation"
    t.integer "cost"
    t.bigint "suffereded_disease_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["suffereded_disease_id"], name: "index_treatments_on_suffereded_disease_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.boolean "admin", default: false
    t.boolean "editor", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vet_charges", force: :cascade do |t|
    t.bigint "veterinary_id", null: false
    t.bigint "shelter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shelter_id"], name: "index_vet_charges_on_shelter_id"
    t.index ["veterinary_id"], name: "index_vet_charges_on_veterinary_id"
  end

  create_table "veterinaries", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "volunteerings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "shelter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shelter_id"], name: "index_volunteerings_on_shelter_id"
    t.index ["user_id"], name: "index_volunteerings_on_user_id"
  end

  add_foreign_key "animals", "adopters"
  add_foreign_key "animals", "rescued_froms"
  add_foreign_key "animals", "shelters"
  add_foreign_key "medical_histories", "animals"
  add_foreign_key "procedures", "treatments"
  add_foreign_key "rescued_froms", "locations"
  add_foreign_key "suffereded_diseases", "diseases"
  add_foreign_key "suffereded_diseases", "medical_histories"
  add_foreign_key "suffereded_diseases", "veterinaries"
  add_foreign_key "treatments", "suffereded_diseases"
  add_foreign_key "vet_charges", "shelters"
  add_foreign_key "vet_charges", "veterinaries"
  add_foreign_key "volunteerings", "shelters"
  add_foreign_key "volunteerings", "users"
end
