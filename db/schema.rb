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

ActiveRecord::Schema.define(version: 20151017114154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "advices", force: :cascade do |t|
    t.string   "text"
    t.integer  "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "advices", ["day_id"], name: "index_advices_on_day_id", using: :btree

  create_table "answers", force: :cascade do |t|
    t.string   "text"
    t.integer  "day_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "answers", ["day_id"], name: "index_answers_on_day_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "arts", force: :cascade do |t|
    t.string   "url"
    t.string   "author"
    t.string   "title"
    t.integer  "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "arts", ["day_id"], name: "index_arts_on_day_id", using: :btree

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

  create_table "memories", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "day_id"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memories", ["day_id"], name: "index_memories_on_day_id", using: :btree
  add_index "memories", ["person_id"], name: "index_memories_on_person_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.date     "last_date_seen"
    t.string   "mood"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "personality"
    t.string   "likes"
    t.date     "birthday"
  end

  create_table "questions", force: :cascade do |t|
    t.boolean  "personal"
    t.string   "text"
    t.integer  "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["day_id"], name: "index_questions_on_day_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "url"
    t.string   "author"
    t.string   "title"
    t.integer  "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "songs", ["day_id"], name: "index_songs_on_day_id", using: :btree

  create_table "wishes", force: :cascade do |t|
    t.string   "text"
    t.integer  "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "wishes", ["day_id"], name: "index_wishes_on_day_id", using: :btree

  add_foreign_key "advices", "days"
  add_foreign_key "answers", "days"
  add_foreign_key "answers", "questions"
  add_foreign_key "arts", "days"
  add_foreign_key "memories", "days"
  add_foreign_key "memories", "people"
  add_foreign_key "questions", "days"
  add_foreign_key "songs", "days"
  add_foreign_key "wishes", "days"
end
