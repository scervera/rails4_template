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

ActiveRecord::Schema.define(version: 20141215001102) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.boolean  "publish"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subtitle"
    t.string   "figure"
    t.text     "content"
    t.integer  "row_order"
  end

  create_table "videos", force: true do |t|
    t.text     "title"
    t.text     "subtitle"
    t.string   "url"
    t.text     "description"
    t.boolean  "featured"
    t.integer  "row_order"
    t.text     "speaker"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
