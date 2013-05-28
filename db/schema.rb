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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130522145820) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "email"
    t.text     "about"
    t.string   "url"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "zoom"
    t.integer  "user_id"
    t.string   "types",       :limit => 100
    t.integer  "category_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "business_id"
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["business_id"], :name => "index_photos_on_business_id"

  create_table "places", :force => true do |t|
    t.string   "name"
    t.integer  "processed",          :limit => 1,  :default => 0
    t.string   "place_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "icon"
    t.string   "vicinity"
    t.string   "types"
    t.text     "reference"
    t.string   "phone"
    t.string   "int_phone"
    t.string   "address"
    t.string   "website"
    t.string   "url"
    t.string   "image_file_name"
    t.string   "image_content_type", :limit => 50
    t.integer  "image_file_size"
    t.datetime "image_update_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["latitude", "longitude"], :name => "idx_geo"
  add_index "places", ["types"], :name => "idx_types"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
