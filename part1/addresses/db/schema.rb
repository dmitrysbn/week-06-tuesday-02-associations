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

ActiveRecord::Schema.define(version: 20180228013058) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "year_founded"
    t.integer "province_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.integer "year_founded"
    t.string "national_animal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "residence_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["residence_id"], name: "index_people_on_residence_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "year_founded"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "residences", force: :cascade do |t|
    t.string "address"
    t.integer "year_built"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_residences_on_city_id"
  end

end
