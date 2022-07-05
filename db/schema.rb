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

ActiveRecord::Schema[7.0].define(version: 2022_07_03_201754) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_histories", force: :cascade do |t|
    t.float "weight"
    t.string "height"
    t.date "visit_date"
    t.integer "pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["pet_id"], name: "index_pet_histories_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "dog_type"
    t.index ["client_id"], name: "index_pets_on_client_id"
  end

  add_foreign_key "pet_histories", "pets"
  add_foreign_key "pets", "clients"
end
