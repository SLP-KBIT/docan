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

ActiveRecord::Schema.define(version: 20140620114108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assigneds", force: true do |t|
    t.integer  "member_id"
    t.integer  "project_id"
    t.boolean  "is_leader"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_infos", force: true do |t|
    t.integer  "member_id"
    t.text     "student_number"
    t.text     "phone_number"
    t.datetime "birthday"
    t.text     "position"
    t.text     "twitter_account"
    t.text     "labo"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.text     "account"
    t.text     "password_digest"
    t.text     "name"
    t.boolean  "is_admin"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "old_proceedings", force: true do |t|
    t.integer  "version"
    t.integer  "proceeding_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proceedings", force: true do |t|
    t.text     "title"
    t.text     "content"
    t.integer  "sender_id"
    t.integer  "project_id"
    t.datetime "date"
    t.text     "type_id"
    t.integer  "version"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.text     "name"
    t.text     "mail"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.text     "name"
    t.text     "template"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
