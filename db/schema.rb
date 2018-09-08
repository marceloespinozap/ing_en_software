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

ActiveRecord::Schema.define(version: 20180727043420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attentions", force: :cascade do |t|
    t.date "attention_date"
    t.string "attention_time"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "professional_id"
    t.bigint "client_id"
    t.index ["client_id"], name: "index_attentions_on_client_id"
    t.index ["professional_id"], name: "index_attentions_on_professional_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "prevision"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "preexistenceclients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "preexistence_id"
    t.bigint "client_id"
    t.index ["client_id"], name: "index_preexistenceclients_on_client_id"
    t.index ["preexistence_id"], name: "index_preexistenceclients_on_preexistence_id"
  end

  create_table "preexistences", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.date "start_contract"
    t.date "end_contract"
    t.integer "type_contract"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "specialty_id"
    t.index ["specialty_id"], name: "index_professionals_on_specialty_id"
    t.index ["user_id"], name: "index_professionals_on_user_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.string "institution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "nombre"
    t.date "fecha_nacimiento"
    t.integer "numero_contacto"
    t.string "direccion"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attentions", "clients", on_delete: :cascade
  add_foreign_key "attentions", "professionals", on_delete: :cascade
  add_foreign_key "clients", "users", on_delete: :cascade
  add_foreign_key "preexistenceclients", "clients", on_delete: :cascade
  add_foreign_key "preexistenceclients", "preexistences"
  add_foreign_key "professionals", "specialties", on_delete: :cascade
  add_foreign_key "professionals", "users", on_delete: :cascade
end
