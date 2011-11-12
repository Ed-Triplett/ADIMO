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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111109235057) do

  create_table "building_topographies", :force => true do |t|
    t.string   "building_topography"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "building_types", :force => true do |t|
    t.string   "type"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "topography"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "church_metadata", :force => true do |t|
    t.string   "type"
    t.string   "plan"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "churchmeta_types", :force => true do |t|
    t.string   "churchmeta_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", :force => true do |t|
    t.string   "event_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "begin_date"
    t.integer  "earliest_begin_date"
    t.integer  "latest_begin_date"
    t.integer  "end_date"
    t.integer  "earliest_end_date"
    t.integer  "latest_end_date"
    t.string   "building_type"
    t.string   "event_type"
    t.string   "Note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fortmeta_monast_blgs", :force => true do |t|
    t.string   "fortmeta_monast_bldgs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fortmeta_plantypes", :force => true do |t|
    t.string   "fortmeta_plantype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fortmeta_settlements", :force => true do |t|
    t.string   "fortmeta_settlement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fortress_metadata", :force => true do |t|
    t.string   "relationship_to_settlement"
    t.string   "plan_type"
    t.string   "monastic_buildings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "military_orders", :force => true do |t|
    t.string   "name"
    t.integer  "origin_date"
    t.integer  "dissolution_date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milorders_names", :force => true do |t|
    t.string   "order_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monastic_metadata", :force => true do |t|
    t.string   "buildings"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monastmeta_bldgs", :force => true do |t|
    t.string   "monastmeta_bldgs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_names", :force => true do |t|
    t.string   "order_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patron_dates", :force => true do |t|
    t.string   "patron_dates"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patron_kingdoms", :force => true do |t|
    t.string   "patron_kingdom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patron_names", :force => true do |t|
    t.string   "patron_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patron_types", :force => true do |t|
    t.string   "patron_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patrons", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "reign_begins"
    t.integer  "reign_ends"
    t.string   "kingdom"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_principalities", :force => true do |t|
    t.string   "principality_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "principality"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
