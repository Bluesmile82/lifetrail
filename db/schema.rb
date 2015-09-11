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

ActiveRecord::Schema.define(version: 20150911020212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "text"
    t.integer  "day_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "answers", ["day_id"], name: "index_answers_on_day_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "days", force: :cascade do |t|
    t.text     "feeling"
    t.string   "song"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "desire"
    t.text     "pain"
    t.integer  "pain_level"
    t.string   "dreams"
    t.string   "poem"
    t.string   "new"
    t.string   "artist"
    t.string   "journal"
    t.string   "advice"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.date     "last_date_seen"
    t.string   "mood"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.boolean  "personal"
    t.string   "text"
    t.integer  "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["day_id"], name: "index_questions_on_day_id", using: :btree

  add_foreign_key "answers", "days"
  add_foreign_key "answers", "questions"
  add_foreign_key "questions", "days"
end
