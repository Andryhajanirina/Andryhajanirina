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

ActiveRecord::Schema.define(version: 2018_08_26_180932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competance_cms", force: :cascade do |t|
    t.string "cms"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_competance_cms_on_user_id"
  end

  create_table "competance_frameworks", force: :cascade do |t|
    t.string "framework"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_competance_frameworks_on_user_id"
  end

  create_table "competance_langages", force: :cascade do |t|
    t.string "langage"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_competance_langages_on_user_id"
  end

  create_table "competance_langues", force: :cascade do |t|
    t.string "langue"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_competance_langues_on_user_id"
  end

  create_table "competance_sgbds", force: :cascade do |t|
    t.string "sgbd"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_competance_sgbds_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "intitule"
    t.string "societe"
    t.datetime "debut"
    t.datetime "fin"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "formations", force: :cascade do |t|
    t.string "intitule"
    t.string "diplome"
    t.string "etablissement"
    t.datetime "debut"
    t.datetime "fin"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_formations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lastname"
    t.string "firstname"
    t.datetime "birthday"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "competance_cms", "users"
  add_foreign_key "competance_frameworks", "users"
  add_foreign_key "competance_langages", "users"
  add_foreign_key "competance_langues", "users"
  add_foreign_key "competance_sgbds", "users"
  add_foreign_key "experiences", "users"
  add_foreign_key "formations", "users"
end
