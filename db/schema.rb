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

ActiveRecord::Schema.define(version: 20150327124743) do

  create_table "classroom_types", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "abbreviation", limit: 255
    t.string   "description",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "classroom_type_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "classrooms", ["classroom_type_id"], name: "classroom_type_id_idx", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "comment",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "specialization_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "courses", ["specialization_id"], name: "specialization_id_idx", using: :btree

  create_table "crossovers", force: :cascade do |t|
    t.integer  "student_id",     limit: 4
    t.integer  "course_id",      limit: 4
    t.integer  "supervision_id", limit: 4
    t.datetime "start"
    t.datetime "end"
    t.boolean  "attendance",     limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "crossovers", ["course_id"], name: "course_id_idx", using: :btree
  add_index "crossovers", ["student_id"], name: "student_id_idx", using: :btree
  add_index "crossovers", ["supervision_id"], name: "supervision_id_idx", using: :btree

  create_table "exam_periods", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "abbreviation", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "student_exams", force: :cascade do |t|
    t.integer  "student_id",     limit: 4
    t.integer  "course_id",      limit: 4
    t.integer  "supervision_id", limit: 4
    t.datetime "start"
    t.datetime "end"
    t.boolean  "present",        limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "supervisions", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "supervisor_id",  limit: 4
    t.integer  "classroom_id",   limit: 4
    t.integer  "exam_period_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "supervisions", ["classroom_id"], name: "classroom_id_idx", using: :btree
  add_index "supervisions", ["exam_period_id"], name: "exam_period_id_idx", using: :btree
  add_index "supervisions", ["supervisor_id"], name: "supervisor_id_idx", using: :btree

  create_table "supervisors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "initials",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "classrooms", "classroom_types", name: "classroom_type_id"
  add_foreign_key "courses", "specializations", name: "specialization_id"
  add_foreign_key "crossovers", "courses", name: "course_id"
  add_foreign_key "crossovers", "students", name: "student_id"
  add_foreign_key "crossovers", "supervisions", name: "supervision_id"
  add_foreign_key "supervisions", "classrooms", name: "classroom_id"
  add_foreign_key "supervisions", "exam_periods", name: "exam_period_id"
  add_foreign_key "supervisions", "supervisors", name: "supervisor_id"
end
