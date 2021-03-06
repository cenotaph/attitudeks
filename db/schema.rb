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

ActiveRecord::Schema.define(version: 8) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "surname",          limit: 255
    t.string   "email",            limit: 255
    t.string   "crypted_password", limit: 255
    t.string   "role",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckuploads", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.text     "file",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imageset_images", id: false, force: :cascade do |t|
    t.integer  "imageset_id", limit: 4,                 null: false
    t.integer  "image_id",    limit: 4,                 null: false
    t.boolean  "primary",     limit: 1, default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imageset_images", ["imageset_id", "image_id"], name: "imageset_images_udx", unique: true, using: :btree
  add_index "imageset_images", ["imageset_id"], name: "imageset_image_id_idx", using: :btree

  create_table "imagesets", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "number",      limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",        limit: 255
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.boolean  "published",  limit: 1
    t.string   "slug",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.boolean  "published",  limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",       limit: 255
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true, using: :btree

end
