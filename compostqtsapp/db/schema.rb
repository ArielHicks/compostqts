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

ActiveRecord::Schema.define(version: 2019_06_06_142629) do

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.integer "membership_years"
    t.integer "heat_rating"
    t.integer "happiness_rating"
    t.integer "min_strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plots", force: :cascade do |t|
    t.integer "user_id"
    t.integer "garden_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plot_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.integer "heatstroke"
    t.integer "happiness"
    t.integer "membership_years"
    t.integer "strength_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

end
