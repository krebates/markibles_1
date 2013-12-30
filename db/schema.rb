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

ActiveRecord::Schema.define(version: 20131230153826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: true do |t|
    t.string   "name",        null: false
    t.string   "photo"
    t.text     "description", null: false
    t.integer  "seller_id",   null: false
    t.decimal  "price",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "user_id",                null: false
    t.integer  "overall_rating",         null: false
    t.integer  "flavor",                 null: false
    t.integer  "presentation",           null: false
    t.integer  "timeliness_of_delivery", null: false
    t.integer  "product_id"
    t.integer  "seller_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ratable_id"
    t.string   "ratable_type"
  end

  create_table "sellers", force: true do |t|
    t.string   "store_website"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",   null: false
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "email"
    t.integer  "dob",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
