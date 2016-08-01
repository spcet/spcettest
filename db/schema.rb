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

ActiveRecord::Schema.define(version: 20160801163429) do

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "admins", ["user_id"], name: "index_admins_on_user_id"

  create_table "attendance_masters", force: :cascade do |t|
    t.integer  "semester_id"
    t.date     "date"
    t.boolean  "today"
    t.string   "subject"
    t.string   "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attendance_masters", ["semester_id"], name: "index_attendance_masters_on_semester_id"

  create_table "attendances", force: :cascade do |t|
    t.integer  "semester_id"
    t.integer  "student_id"
    t.date     "date"
    t.string   "subject"
    t.boolean  "attended"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attendances", ["semester_id"], name: "index_attendances_on_semester_id"
  add_index "attendances", ["student_id"], name: "index_attendances_on_student_id"

  create_table "batches", force: :cascade do |t|
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "dept_id"
    t.integer  "batch_id"
    t.boolean  "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "classrooms", ["batch_id"], name: "index_classrooms_on_batch_id"
  add_index "classrooms", ["dept_id"], name: "index_classrooms_on_dept_id"

  create_table "depts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string   "name"
    t.integer  "classroom_id"
    t.boolean  "completed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "semesters", ["classroom_id"], name: "index_semesters_on_classroom_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "regno"
    t.integer  "dept_id"
    t.integer  "batch_id"
    t.integer  "user_id"
    t.integer  "hoa"
    t.integer  "sa"
    t.string   "hoal"
    t.string   "sal"
    t.date     "dob"
    t.string   "gender"
    t.string   "fathersname"
    t.string   "guardian"
    t.string   "community"
    t.string   "religionn"
    t.integer  "tenth"
    t.integer  "twelth"
    t.string   "fathersoccupiton"
    t.string   "identification"
    t.string   "blood"
    t.boolean  "dote"
    t.string   "mobile"
    t.string   "pmobile"
    t.string   "addr1"
    t.string   "addr2"
    t.string   "mark"
    t.string   "ten"
    t.string   "two"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "students", ["batch_id"], name: "index_students_on_batch_id"
  add_index "students", ["dept_id"], name: "index_students_on_dept_id"
  add_index "students", ["user_id"], name: "index_students_on_user_id"

  create_table "subjectms", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "staff"
    t.integer  "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "subjectm_id"
    t.string   "name"
    t.integer  "semester_id"
    t.integer  "credit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "subjects", ["semester_id"], name: "index_subjects_on_semester_id"
  add_index "subjects", ["subjectm_id"], name: "index_subjects_on_subjectm_id"

  create_table "unitmarks", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.integer  "unit_id"
    t.string   "mark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "unitmarks", ["student_id"], name: "index_unitmarks_on_student_id"
  add_index "unitmarks", ["subject_id"], name: "index_unitmarks_on_subject_id"
  add_index "unitmarks", ["unit_id"], name: "index_unitmarks_on_unit_id"

  create_table "units", force: :cascade do |t|
    t.integer  "semester_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "units", ["semester_id"], name: "index_units_on_semester_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "role"
    t.string   "actor"
    t.string   "path"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
