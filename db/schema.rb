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

ActiveRecord::Schema.define(version: 20131107013450) do

  create_table "allorders", force: true do |t|
    t.string   "CREATED_DATE"
    t.string   "PERFORMER"
    t.string   "CATEGORY"
    t.string   "DURATION"
    t.string   "QUALITY"
    t.string   "DELIVERY_TIME"
    t.string   "ORDER_STATE"
    t.string   "UPLOAD_VIDEO"
    t.string   "Performer_TOTAL"
    t.string   "C4U_commission"
    t.string   "Gross_Total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ORDER_ID"
  end

# Could not dump table "allorders " because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "registers", force: true do |t|
    t.string   "username"
    t.string   "encrypted_password"
    t.string   "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signups", primary_key: "user_id", force: true do |t|
    t.string   "name"
    t.string   "email_id"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "updateallorders", primary_key: "ORDER_ID", force: true do |t|
    t.string   "CREATED_DATE"
    t.string   "PERFORMER"
    t.string   "CATEGORY"
    t.string   "DURATION"
    t.string   "QUALITY"
    t.string   "DELIVERY_TIME"
    t.string   "ORDER_STATE"
    t.string   "UPLOAD_VIDEO"
    t.string   "Performer_TOTAL"
    t.string   "C4U_commission"
    t.string   "Gross_Total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
