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

ActiveRecord::Schema.define(version: 20140718235223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: true do |t|
    t.string   "CAMIS"
    t.string   "DBA"
    t.string   "BORO"
    t.string   "BUILDING"
    t.string   "STREET"
    t.string   "ZIPCODE"
    t.string   "PHONE"
    t.string   "CUISINECODE"
    t.string   "INSPDATE"
    t.string   "ACTION"
    t.string   "VIOLCODE"
    t.string   "SCORE"
    t.string   "CURRENTGRADE"
    t.string   "GRADEDATE"
    t.string   "RECORDDATE"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
