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

ActiveRecord::Schema.define(version: 20170721200636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_tags", id: false, force: :cascade do |t|
    t.integer  "articles_id"
    t.integer  "tags_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "art_tags", ["articles_id"], name: "index_art_tags_on_articles_id", using: :btree
  add_index "art_tags", ["tags_id"], name: "index_art_tags_on_tags_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "content"
    t.string   "image"
    t.integer  "category_id"
    t.integer  "art_tags_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "articles", ["art_tags_id"], name: "index_articles_on_art_tags_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
