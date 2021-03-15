# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_15_113853) do

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.decimal "preferred_working_hour_per_day"
  end

  create_table "work_logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.date "work_date"
    t.decimal "hours"
    t.string "notes"
    t.index ["user_id"], name: "index_work_logs_on_user_id"
  end

  add_foreign_key "work_logs", "users"
end
