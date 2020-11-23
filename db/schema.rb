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

ActiveRecord::Schema.define(version: 20201123190909) do

  create_table "accepteds", force: :cascade do |t|
    t.integer "event_id"
    t.string "user_type"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_accepteds_on_event_id"
    t.index ["user_type", "user_id"], name: "index_accepteds_on_user_type_and_user_id"
  end

  create_table "applications", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_applications_on_event_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "evenreviews", force: :cascade do |t|
    t.integer "event_id"
    t.string "user_type"
    t.integer "user_id"
    t.string "scores"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_evenreviews_on_event_id"
    t.index ["user_type", "user_id"], name: "index_evenreviews_on_user_type_and_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.string "address"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "description"
    t.text "photos"
    t.string "links_to_share"
    t.integer "fees"
    t.integer "available"
    t.integer "capacity"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.integer "userlog_id"
    t.index ["user_id"], name: "index_events_on_user_id"
    t.index ["userlog_id"], name: "index_events_on_userlog_id"
  end

  create_table "userlogs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: ""
    t.index ["email"], name: "index_userlogs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_userlogs_on_reset_password_token", unique: true
  end

  create_table "userreviews", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_type"
    t.string "scores"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_userreviews_on_user_id"
    t.index ["user_type", "user_id"], name: "index_userreviews_on_user_type_and_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "phone"
    t.datetime "email_verified_at"
    t.string "photo"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userlog_id"
    t.index ["userlog_id"], name: "index_users_on_userlog_id"
  end

end
