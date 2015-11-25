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

ActiveRecord::Schema.define(version: 20151124135616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text     "description"
    t.integer  "learning_objective_id"
    t.text     "context"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "competencies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "active"
  end

  create_table "competency_feedbacks", force: :cascade do |t|
    t.integer  "feedback_id"
    t.integer  "competency_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text     "comment"
    t.integer  "learning_objective_id"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "student_id"
  end

  create_table "learning_objectives", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "competency_id"
    t.boolean  "achieved"
    t.integer  "academic_year"
    t.integer  "period"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "proofs", force: :cascade do |t|
    t.text     "description"
    t.integer  "activity_id"
    t.text     "reference"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_type"
    t.integer  "education_number"
    t.string   "education_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
