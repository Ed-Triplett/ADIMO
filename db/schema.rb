<<<<<<< HEAD
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

ActiveRecord::Schema.define(:version => 20120303004105) do

  create_table "architecture_types", :force => true do |t|
    t.string    "architecture_type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "building_topographies", :force => true do |t|
    t.string    "building_topography"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "building_id"
  end

  create_table "building_types", :force => true do |t|
    t.text      "note"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "event_id"
    t.string    "building_type"
    t.integer   "architecture_type_id"
  end

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "topography"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
    t.integer  "building_topography_id"
    t.decimal  "lat",                    :precision => 15, :scale => 10
    t.decimal  "lng",                    :precision => 15, :scale => 10
  end

  create_table "church_metadata", :force => true do |t|
    t.string    "type"
    t.string    "plan"
    t.text      "note"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "event_id"
    t.integer   "building_type_id"
    t.integer   "churchmeta_type_id"
  end

  create_table "churchmeta_types", :force => true do |t|
    t.string    "churchmeta_type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "church_metadata_id"
  end

  create_table "event_types", :force => true do |t|
    t.string    "event_type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "event_id"
  end

  create_table "events", :force => true do |t|
    t.integer   "begin_date"
    t.integer   "earliest_begin_date"
    t.integer   "latest_begin_date"
    t.integer   "end_date"
    t.integer   "earliest_end_date"
    t.integer   "latest_end_date"
    t.string    "building_type"
    t.string    "event_type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "building_id"
    t.string    "note"
    t.integer   "building_type_id"
    t.integer   "event_type_id"
    t.integer   "patron_type_id"
    t.integer   "military_order_id"
    t.integer   "patron_id"
  end

  create_table "events_patrons", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "patron_id"
  end

  create_table "fortmeta_monast_blgs", :force => true do |t|
    t.string    "fortmeta_monast_bldgs"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "fortress_metadata_id"
  end

  create_table "fortmeta_plantypes", :force => true do |t|
    t.string    "fortmeta_plantype"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "fortress_metadata_id"
  end

  create_table "fortmeta_settlements", :force => true do |t|
    t.string    "fortmeta_settlement"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "fortress_metadata_id"
  end

  create_table "fortress_metadata", :force => true do |t|
    t.string    "relationship_to_settlement"
    t.string    "plan_type"
    t.string    "monastic_buildings"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "event_id"
    t.integer   "fortmeta_settlement_id"
    t.integer   "fortmeta_plantype_id"
    t.integer   "fortmeta_monast_bldg_id"
    t.integer   "building_type_id"
    t.integer   "fortmeta_plan_type_id"
    t.integer   "fortmeta_monast_bldgs_id"
    t.integer   "formeta_settlement_id"
    t.integer   "fortmeta_monast_blg_id"
  end

  create_table "fortress_metadata_fortmeta_monast_blgs", :id => false, :force => true do |t|
    t.integer "fortress_metadatum_id"
    t.integer "fortmeta_monast_blg_id"
  end

  create_table "military_orders", :force => true do |t|
    t.string    "name"
    t.integer   "origin_date"
    t.integer   "dissolution_date"
    t.text      "note"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "event_id"
    t.integer   "milorders_name_id"
  end

  create_table "milorders_names", :force => true do |t|
    t.string    "order_name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "military_order_id"
  end

  create_table "monastic_metadata", :force => true do |t|
    t.string    "buildings"
    t.text      "note"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "event_id"
    t.integer   "building_type_id"
    t.integer   "monastmeta_bldg_id"
    t.integer   "monastmeta_bldgs_id"
  end

  create_table "monastmeta_bldgs", :force => true do |t|
    t.string    "monastmeta_bldgs"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "monastic_metadata_id"
  end

  create_table "order_names", :force => true do |t|
    t.string    "order_name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "order_id"
  end

  create_table "patron_dates", :force => true do |t|
    t.string    "patron_dates"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "patron_id"
  end

  create_table "patron_kingdoms", :force => true do |t|
    t.string    "patron_kingdom"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "patron_id"
  end

  create_table "patron_names", :force => true do |t|
    t.string    "patron_name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "patron_id"
  end

  create_table "patron_types", :force => true do |t|
    t.string    "patron_type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "patron_id"
  end

  create_table "patrons", :force => true do |t|
    t.string    "name"
    t.string    "type"
    t.integer   "reign_begins"
    t.integer   "reign_ends"
    t.string    "kingdom"
    t.text      "note"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "event_id"
    t.integer   "patron_name_id"
    t.integer   "patron_type_id"
    t.integer   "patron_kingdom_id"
    t.integer   "patron_date_id"
  end

  create_table "sessions", :force => true do |t|
    t.string    "session_id", :null => false
    t.text      "data"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "site_principalities", :force => true do |t|
    t.string    "principality_name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "site_id"
  end

  create_table "sites", :force => true do |t|
    t.string    "name"
    t.string    "principality"
    t.text      "notes"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "site_principality_id"
  end

  create_table "users", :force => true do |t|
    t.string    "email",                                 :default => "",    :null => false
    t.string    "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                         :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "approved",                              :default => false, :null => false
  end

  add_index "users", ["approved"], :name => "index_users_on_approved"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end


