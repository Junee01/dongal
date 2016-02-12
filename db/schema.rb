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

ActiveRecord::Schema.define(version: 20160204022050) do

  create_table "dongal_alarm", primary_key: "alarm_no", force: :cascade do |t|
    t.string  "mb_uuid",     limit: 255,             null: false
    t.integer "arts",        limit: 1,   default: 1, null: false
    t.integer "bs",          limit: 1,   default: 1, null: false
    t.integer "edus",        limit: 1,   default: 1, null: false
    t.integer "engineers",   limit: 1,   default: 1, null: false
    t.integer "entrances",   limit: 1,   default: 1, null: false
    t.integer "globals",     limit: 1,   default: 1, null: false
    t.integer "laws",        limit: 1,   default: 1, null: false
    t.integer "liberals",    limit: 1,   default: 1, null: false
    t.integer "lives",       limit: 1,   default: 1, null: false
    t.integer "normals",     limit: 1,   default: 1, null: false
    t.integer "pharms",      limit: 1,   default: 1, null: false
    t.integer "proceedings", limit: 1,   default: 1, null: false
    t.integer "sbas",        limit: 1,   default: 1, null: false
    t.integer "scholars",    limit: 1,   default: 1, null: false
    t.integer "sciences",    limit: 1,   default: 1, null: false
    t.integer "socials",     limit: 1,   default: 1, null: false
    t.integer "studies",     limit: 1,   default: 1, null: false
  end

  create_table "dongal_boards", force: :cascade do |t|
    t.string "board_name",  limit: 255
    t.string "board_title", limit: 255
    t.string "board_type",  limit: 255
    t.string "board_color", limit: 255
  end

  create_table "dongal_college", primary_key: "college_no", force: :cascade do |t|
    t.string  "mb_uuid",   limit: 255,             null: false
    t.integer "arts",      limit: 1,   default: 1, null: false
    t.integer "bs",        limit: 1,   default: 1, null: false
    t.integer "edus",      limit: 1,   default: 1, null: false
    t.integer "engineers", limit: 1,   default: 1, null: false
    t.integer "laws",      limit: 1,   default: 1, null: false
    t.integer "liberals",  limit: 1,   default: 1, null: false
    t.integer "lives",     limit: 1,   default: 1, null: false
    t.integer "pharms",    limit: 1,   default: 1, null: false
    t.integer "sbas",      limit: 1,   default: 1, null: false
    t.integer "sciences",  limit: 1,   default: 1, null: false
    t.integer "socials",   limit: 1,   default: 1, null: false
  end

  create_table "dongal_keyword", primary_key: "keyword_no", force: :cascade do |t|
    t.string "mb_uuid",     limit: 255, null: false
    t.string "keyword_txt", limit: 255, null: false
  end

  create_table "dongal_like", primary_key: "like_no", force: :cascade do |t|
    t.string   "mb_uuid",     limit: 255, null: false
    t.integer  "wr_id",       limit: 4,   null: false
    t.string   "bo_table",    limit: 127, null: false
    t.datetime "update_time",             null: false
  end

  create_table "dongal_member", primary_key: "mb_no", force: :cascade do |t|
    t.string  "mb_uuid",     limit: 255,             null: false
    t.integer "use_keyword", limit: 1,   default: 1, null: false
  end

  create_table "dongal_notices", force: :cascade do |t|
    t.integer "wr_id",       limit: 4
    t.string  "wr_title",    limit: 255
    t.string  "wr_writer",   limit: 255
    t.string  "bo_table",    limit: 255
    t.date    "update_time"
    t.string  "check",       limit: 255
  end

  create_table "g4_dongal_board_arts", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_bs", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_edus", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_engineers", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_entrances", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_globals", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_laws", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_liberals", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_lives", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_normals", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_pharms", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_proceedings", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_sbas", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_scholars", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_sciences", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_socials", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "g4_dongal_board_studies", force: :cascade do |t|
    t.string   "wr_title",      limit: 255
    t.string   "wr_link",       limit: 255
    t.string   "wr_writer",     limit: 255
    t.integer  "wr_hit",        limit: 4
    t.date     "wr_created_on"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
