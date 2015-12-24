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

ActiveRecord::Schema.define(version: 20151223234452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "page_title"
    t.string   "country_city"
    t.integer  "year_of_birth"
    t.integer  "year_of_death"
    t.text     "details"
    t.text     "biography"
    t.string   "external_link"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "artists_rooms", id: false, force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "room_id",   null: false
  end

  create_table "floors", force: :cascade do |t|
    t.integer  "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.boolean  "zoom"
    t.string   "file_link"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "imageable_id"
    t.string   "imageable_type"
  end

  add_index "images", ["imageable_id"], name: "index_images_on_imageable_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "page_title"
    t.string   "work_title"
    t.string   "other_craft"
    t.string   "other_artist"
    t.string   "type_of_item"
    t.string   "material"
    t.string   "technique"
    t.date     "created"
    t.string   "signature"
    t.text     "features"
    t.date     "date_acquired"
    t.string   "gift_of"
    t.string   "text_documents"
    t.boolean  "featured"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "artist_id"
    t.integer  "room_id"
    t.string   "name"
  end

  create_table "media", force: :cascade do |t|
    t.string   "type"
    t.string   "file_link"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "multimediable_id"
    t.string   "multimediable_type"
  end

  add_index "media", ["multimediable_id"], name: "index_media_on_multimediable_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "floor_id"
  end

  add_foreign_key "items", "artists"
  add_foreign_key "items", "rooms"
  add_foreign_key "rooms", "floors"
end
