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

ActiveRecord::Schema.define(version: 9) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affordances", force: :cascade do |t|
    t.string   "type"
    t.boolean  "verified"
    t.json     "details"
    t.integer  "matrix_entry_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "affordances", ["matrix_entry_id"], name: "index_affordances_on_matrix_entry_id", using: :btree

  create_table "assistive_technologies", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "version"
    t.integer  "platform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "browser_readers", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "version"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "browser_readers_content_formats", id: false, force: :cascade do |t|
    t.integer "browser_reader_id"
    t.integer "content_format_id"
  end

  add_index "browser_readers_content_formats", ["browser_reader_id"], name: "index_browser_readers_content_formats_on_browser_reader_id", using: :btree
  add_index "browser_readers_content_formats", ["content_format_id"], name: "index_browser_readers_content_formats_on_content_format_id", using: :btree

  create_table "browser_readers_platforms", id: false, force: :cascade do |t|
    t.integer "browser_reader_id"
    t.integer "platform_id"
  end

  add_index "browser_readers_platforms", ["browser_reader_id"], name: "index_browser_readers_platforms_on_browser_reader_id", using: :btree
  add_index "browser_readers_platforms", ["platform_id"], name: "index_browser_readers_platforms_on_platform_id", using: :btree

  create_table "browser_readers_renderers", id: false, force: :cascade do |t|
    t.integer "browser_reader_id"
    t.integer "renderer_id"
  end

  add_index "browser_readers_renderers", ["browser_reader_id"], name: "index_browser_readers_renderers_on_browser_reader_id", using: :btree
  add_index "browser_readers_renderers", ["renderer_id"], name: "index_browser_readers_renderers_on_renderer_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "matrix_entry_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "comments", ["matrix_entry_id"], name: "index_comments_on_matrix_entry_id", using: :btree

  create_table "content_formats", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "version"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "matrix_entries", force: :cascade do |t|
    t.integer  "assistive_technology_id"
    t.integer  "browser_reader_id"
    t.integer  "content_format_id"
    t.integer  "platform_id"
    t.integer  "renderer_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "matrix_entries", ["assistive_technology_id"], name: "index_matrix_entries_on_assistive_technology_id", using: :btree
  add_index "matrix_entries", ["browser_reader_id"], name: "index_matrix_entries_on_browser_reader_id", using: :btree
  add_index "matrix_entries", ["content_format_id"], name: "index_matrix_entries_on_content_format_id", using: :btree
  add_index "matrix_entries", ["platform_id"], name: "index_matrix_entries_on_platform_id", using: :btree
  add_index "matrix_entries", ["renderer_id"], name: "index_matrix_entries_on_renderer_id", using: :btree

  create_table "media_attachments", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.string   "link"
    t.integer  "matrix_entry_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "media_attachments", ["matrix_entry_id"], name: "index_media_attachments_on_matrix_entry_id", using: :btree

  create_table "platforms", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "version"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "renderers", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "version"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "affordances", "matrix_entries"
  add_foreign_key "comments", "matrix_entries"
  add_foreign_key "matrix_entries", "assistive_technologies"
  add_foreign_key "matrix_entries", "browser_readers"
  add_foreign_key "matrix_entries", "content_formats"
  add_foreign_key "matrix_entries", "platforms"
  add_foreign_key "matrix_entries", "renderers"
  add_foreign_key "media_attachments", "matrix_entries"
end
