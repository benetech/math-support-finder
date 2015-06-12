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

ActiveRecord::Schema.define(version: 11) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affordances", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assistive_technologies", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assistive_technology_versions", force: :cascade do |t|
    t.integer  "assistive_technology_id"
    t.string   "version"
    t.text     "notes"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "assistive_technology_versions", ["assistive_technology_id"], name: "index_assistive_technology_versions_on_assistive_technology_id", using: :btree

  create_table "browser_reader_versions", force: :cascade do |t|
    t.integer  "browser_reader_id"
    t.string   "version"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "browser_reader_versions", ["browser_reader_id"], name: "index_browser_reader_versions_on_browser_reader_id", using: :btree

  create_table "browser_readers", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_formats", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_sources", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "version"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "content_sources_matrix_entries", id: false, force: :cascade do |t|
    t.integer "content_source_id"
    t.integer "matrix_entry_id"
  end

  add_index "content_sources_matrix_entries", ["content_source_id"], name: "index_content_sources_matrix_entries_on_content_source_id", using: :btree
  add_index "content_sources_matrix_entries", ["matrix_entry_id"], name: "index_content_sources_matrix_entries_on_matrix_entry_id", using: :btree

  create_table "features", force: :cascade do |t|
    t.string  "title"
    t.text    "notes"
    t.integer "affordance_id"
  end

  add_index "features", ["affordance_id"], name: "index_features_on_affordance_id", using: :btree

  create_table "features_matrix_entries", id: false, force: :cascade do |t|
    t.integer "feature_id"
    t.integer "matrix_entry_id"
  end

  add_index "features_matrix_entries", ["feature_id"], name: "index_features_matrix_entries_on_feature_id", using: :btree
  add_index "features_matrix_entries", ["matrix_entry_id"], name: "index_features_matrix_entries_on_matrix_entry_id", using: :btree

  create_table "matrix_entries", force: :cascade do |t|
    t.integer  "affordance_id"
    t.integer  "assistive_technology_version_id"
    t.integer  "browser_reader_version_id"
    t.integer  "content_format_id"
    t.integer  "platform_version_id"
    t.integer  "renderer_id"
    t.integer  "status_id"
    t.text     "notes"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "matrix_entries", ["affordance_id"], name: "index_matrix_entries_on_affordance_id", using: :btree
  add_index "matrix_entries", ["assistive_technology_version_id"], name: "index_matrix_entries_on_assistive_technology_version_id", using: :btree
  add_index "matrix_entries", ["browser_reader_version_id"], name: "index_matrix_entries_on_browser_reader_version_id", using: :btree
  add_index "matrix_entries", ["content_format_id"], name: "index_matrix_entries_on_content_format_id", using: :btree
  add_index "matrix_entries", ["platform_version_id"], name: "index_matrix_entries_on_platform_version_id", using: :btree
  add_index "matrix_entries", ["renderer_id"], name: "index_matrix_entries_on_renderer_id", using: :btree
  add_index "matrix_entries", ["status_id"], name: "index_matrix_entries_on_status_id", using: :btree

  create_table "media_attachments", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platform_versions", force: :cascade do |t|
    t.integer  "platform_id"
    t.string   "version"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "platform_versions", ["platform_id"], name: "index_platform_versions_on_platform_id", using: :btree

  create_table "platforms", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "renderers", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "title"
  end

  add_foreign_key "assistive_technology_versions", "assistive_technologies"
  add_foreign_key "browser_reader_versions", "browser_readers"
  add_foreign_key "features", "affordances"
  add_foreign_key "matrix_entries", "affordances"
  add_foreign_key "matrix_entries", "assistive_technology_versions"
  add_foreign_key "matrix_entries", "browser_reader_versions"
  add_foreign_key "matrix_entries", "content_formats"
  add_foreign_key "matrix_entries", "platform_versions"
  add_foreign_key "matrix_entries", "renderers"
  add_foreign_key "matrix_entries", "statuses"
  add_foreign_key "platform_versions", "platforms"
end
