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

ActiveRecord::Schema.define(version: 2019_09_14_053736) do

  create_table "csv_attribute_filters", force: :cascade do |t|
    t.integer "csv_filter_id", null: false
    t.integer "csv_attribute_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["csv_attribute_id"], name: "index_csv_attribute_filters_on_csv_attribute_id"
    t.index ["csv_filter_id"], name: "index_csv_attribute_filters_on_csv_filter_id"
  end

  create_table "csv_attributes", force: :cascade do |t|
    t.string "name", null: false
    t.integer "csv_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["csv_type_id"], name: "index_csv_attributes_on_csv_type_id"
  end

  create_table "csv_filters", force: :cascade do |t|
    t.string "name", null: false
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csv_types", force: :cascade do |t|
    t.string "name", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_csv_types_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
