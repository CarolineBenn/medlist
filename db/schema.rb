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

ActiveRecord::Schema.define(version: 20160728162344) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "section"
    t.string   "list_name"
    t.integer  "total"
    t.integer  "africa"
    t.integer  "asia"
    t.integer  "aus_nz"
    t.integer  "eastern_europe"
    t.integer  "middle_east"
    t.integer  "south_america"
    t.integer  "usa_can"
    t.integer  "united_kingdom"
    t.integer  "western_europe"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "slug"
  end

  add_index "lists", ["slug"], name: "index_lists_on_slug", unique: true, using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "primary_content"
    t.text     "secondary_content"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "slug"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

end
