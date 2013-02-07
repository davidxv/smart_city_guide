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

ActiveRecord::Schema.define(:version => 20130202192801) do

  create_table "diaries", :force => true do |t|
    t.integer  "activity_object_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "diaries", ["activity_object_id"], :name => "index_diaries_on_activity_object_id"

  create_table "guides", :force => true do |t|
    t.integer  "activity_object_id"
    t.integer  "trip_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "guides", ["activity_object_id"], :name => "index_guides_on_activity_object_id"
  add_index "guides", ["trip_id"], :name => "index_guides_on_trip_id"

  create_table "guides_places", :id => false, :force => true do |t|
    t.integer "guide_id", :null => false
    t.integer "place_id", :null => false
  end

  add_index "guides_places", ["guide_id", "place_id"], :name => "index_guides_places_on_guide_id_and_place_id", :unique => true

  create_table "places_routes", :id => false, :force => true do |t|
    t.integer "place_id", :null => false
    t.integer "route_id", :null => false
  end

  add_index "places_routes", ["place_id", "route_id"], :name => "index_places_routes_on_place_id_and_route_id", :unique => true

  create_table "places_trips", :id => false, :force => true do |t|
    t.integer "place_id", :null => false
    t.integer "trip_id",  :null => false
  end

  add_index "places_trips", ["place_id", "trip_id"], :name => "index_places_trips_on_place_id_and_trip_id", :unique => true

  create_table "plannings", :force => true do |t|
    t.integer  "activity_object_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "plannings", ["activity_object_id"], :name => "index_plannings_on_activity_object_id"

  create_table "routes", :force => true do |t|
    t.integer  "activity_object_id"
    t.integer  "trip_id"
    t.integer  "guide_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "routes", ["activity_object_id"], :name => "index_routes_on_activity_object_id"
  add_index "routes", ["guide_id"], :name => "index_routes_on_guide_id"
  add_index "routes", ["trip_id"], :name => "index_routes_on_trip_id"

  create_table "trips", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
