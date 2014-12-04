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

ActiveRecord::Schema.define(version: 20141027083705) do

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "comments", force: true do |t|
    t.text     "body"
    t.string   "ip"
    t.string   "im_id"
    t.string   "im_type"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "logo",               default: ""
    t.string   "title",              default: ""
    t.text     "introduction"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "landing_picture_id"
    t.integer  "position",           default: 0
    t.text     "brief_introduction"
    t.text     "css_style"
  end

  create_table "landing_pictures", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "landing_picture_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: true do |t|
    t.integer  "item_id",    default: 0
    t.string   "ip",         default: ""
    t.string   "im_id",      default: ""
    t.string   "im_type",    default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_settings", force: true do |t|
    t.string   "site_name",       default: "大咖招门徒"
    t.integer  "page_cache_time", default: 60
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_account_records", force: true do |t|
    t.string   "voucher_code"
    t.string   "cost"
    t.string   "account"
    t.string   "result"
    t.text     "raw_log"
    t.integer  "user_id",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                     default: "", null: false
    t.string   "encrypted_password",        default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "company_name"
    t.text     "address"
    t.string   "primary_contact_name"
    t.string   "primary_contact_email"
    t.string   "primary_contact_telephone"
    t.string   "bank_name"
    t.string   "bank_account_owner_name"
    t.string   "bank_account"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
