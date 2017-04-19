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

ActiveRecord::Schema.define(version: 20170419165232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "web_url"
    t.string   "event_image"
    t.string   "summary"
    t.integer  "user_id"
    t.string   "description"
    t.string   "location"
    t.string   "city"
    t.string   "organizer"
    t.boolean  "free"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "galleries", force: :cascade do |t|
    t.string   "image_url"
    t.string   "string"
    t.string   "image_src"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "linkedin_url"
    t.string   "twitter_url"
    t.string   "facebook_url"
    t.string   "person_image"
    t.string   "trait_one"
    t.string   "trait_two"
    t.string   "trait_three"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id", using: :btree

  create_table "pins", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "wiki_url"
    t.string   "image_url"
    t.string   "title"
  end

  add_index "pins", ["user_id"], name: "index_pins_on_user_id", using: :btree

  create_table "poems", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "content"
    t.string   "header_image"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "source"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "poems", ["user_id"], name: "index_poems_on_user_id", using: :btree

  create_table "startups", force: :cascade do |t|
    t.string   "company_name"
    t.string   "location"
    t.string   "founder"
    t.string   "team_two"
    t.string   "team_three"
    t.string   "web_url"
    t.string   "twitter_url"
    t.string   "facebook_url"
    t.string   "option_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "summary"
    t.integer  "user_id"
  end

  add_index "startups", ["user_id"], name: "index_startups_on_user_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "header_image"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.datetime "end_time"
  end

  add_index "stories", ["user_id"], name: "index_stories_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
