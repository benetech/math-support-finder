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

ActiveRecord::Schema.define(version: 20150727151043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affordances", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assistive_technologies", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assistive_technology_versions", force: :cascade do |t|
    t.integer  "assistive_technology_id"
    t.float    "version"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assistive_technology_versions", ["assistive_technology_id"], name: "index_assistive_technology_versions_on_assistive_technology_id", using: :btree

  create_table "browser_reader_formats", force: :cascade do |t|
    t.integer  "browser_reader_id"
    t.integer  "format_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "browser_reader_formats", ["browser_reader_id"], name: "index_browser_reader_formats_on_browser_reader_id", using: :btree
  add_index "browser_reader_formats", ["format_id"], name: "index_browser_reader_formats_on_format_id", using: :btree

  create_table "browser_reader_renderers", force: :cascade do |t|
    t.integer  "browser_reader_id"
    t.integer  "renderer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "browser_reader_renderers", ["browser_reader_id"], name: "index_browser_reader_renderers_on_browser_reader_id", using: :btree
  add_index "browser_reader_renderers", ["renderer_id"], name: "index_browser_reader_renderers_on_renderer_id", using: :btree

  create_table "browser_reader_versions", force: :cascade do |t|
    t.integer  "browser_reader_id"
    t.float    "version"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "browser_reader_versions", ["browser_reader_id"], name: "index_browser_reader_versions_on_browser_reader_id", using: :btree

  create_table "browser_readers", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "capabilities", force: :cascade do |t|
    t.integer  "feature_id"
    t.integer  "affordance_id"
    t.integer  "configuration_id"
    t.integer  "verification_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "capabilities", ["affordance_id"], name: "index_capabilities_on_affordance_id", using: :btree
  add_index "capabilities", ["configuration_id"], name: "index_capabilities_on_configuration_id", using: :btree
  add_index "capabilities", ["feature_id"], name: "index_capabilities_on_feature_id", using: :btree
  add_index "capabilities", ["verification_status_id"], name: "index_capabilities_on_verification_status_id", using: :btree

  create_table "configurations", force: :cascade do |t|
    t.integer  "platform_version_id"
    t.integer  "renderer_version_id"
    t.integer  "browser_reader_version_id"
    t.integer  "assistive_technology_version_id"
    t.integer  "format_id"
    t.integer  "workflow_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "configurations", ["assistive_technology_version_id"], name: "index_configurations_on_assistive_technology_version_id", using: :btree
  add_index "configurations", ["browser_reader_version_id"], name: "index_configurations_on_browser_reader_version_id", using: :btree
  add_index "configurations", ["format_id"], name: "index_configurations_on_format_id", using: :btree
  add_index "configurations", ["platform_version_id"], name: "index_configurations_on_platform_version_id", using: :btree
  add_index "configurations", ["renderer_version_id"], name: "index_configurations_on_renderer_version_id", using: :btree
  add_index "configurations", ["workflow_status_id"], name: "index_configurations_on_workflow_status_id", using: :btree

  create_table "content_source_configurations", force: :cascade do |t|
    t.integer  "configuration_id"
    t.integer  "content_source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "content_source_configurations", ["configuration_id"], name: "index_content_source_configurations_on_configuration_id", using: :btree
  add_index "content_source_configurations", ["content_source_id"], name: "index_content_source_configurations_on_content_source_id", using: :btree

  create_table "content_sources", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formats", force: :cascade do |t|
    t.string   "title"
    t.string   "notes"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pats", force: :cascade do |t|
    t.integer  "platform_id"
    t.integer  "assistive_technology_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pats", ["assistive_technology_id"], name: "index_pats_on_assistive_technology_id", using: :btree
  add_index "pats", ["platform_id"], name: "index_pats_on_platform_id", using: :btree

  create_table "platform_browser_readers", force: :cascade do |t|
    t.integer  "platform_id"
    t.integer  "browser_reader_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_browser_readers", ["browser_reader_id"], name: "index_platform_browser_readers_on_browser_reader_id", using: :btree
  add_index "platform_browser_readers", ["platform_id"], name: "index_platform_browser_readers_on_platform_id", using: :btree

  create_table "platform_versions", force: :cascade do |t|
    t.integer  "platform_id"
    t.float    "version"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "platform_versions", ["platform_id"], name: "index_platform_versions_on_platform_id", using: :btree

  create_table "platforms", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renderer_versions", force: :cascade do |t|
    t.integer  "renderer_id"
    t.float    "version"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "renderer_versions", ["renderer_id"], name: "index_renderer_versions_on_renderer_id", using: :btree

  create_table "renderers", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

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
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "verification_statuses", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workflow_statuses", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "assistive_technology_versions", "assistive_technologies"
  add_foreign_key "browser_reader_formats", "browser_readers"
  add_foreign_key "browser_reader_formats", "formats"
  add_foreign_key "browser_reader_renderers", "browser_readers"
  add_foreign_key "browser_reader_renderers", "renderers"
  add_foreign_key "browser_reader_versions", "browser_readers"
  add_foreign_key "capabilities", "affordances"
  add_foreign_key "capabilities", "configurations"
  add_foreign_key "capabilities", "features"
  add_foreign_key "capabilities", "verification_statuses"
  add_foreign_key "configurations", "assistive_technology_versions"
  add_foreign_key "configurations", "browser_reader_versions"
  add_foreign_key "configurations", "formats"
  add_foreign_key "configurations", "platform_versions"
  add_foreign_key "configurations", "renderer_versions"
  add_foreign_key "configurations", "workflow_statuses"
  add_foreign_key "content_source_configurations", "configurations"
  add_foreign_key "content_source_configurations", "content_sources"
  add_foreign_key "pats", "assistive_technologies"
  add_foreign_key "pats", "platforms"
  add_foreign_key "platform_browser_readers", "browser_readers"
  add_foreign_key "platform_browser_readers", "platforms"
  add_foreign_key "platform_versions", "platforms"
  add_foreign_key "renderer_versions", "renderers"
end
