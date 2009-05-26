# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090526222504) do

  create_table "clinical_service_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clinical_services", :force => true do |t|
    t.integer  "hospital_id"
    t.integer  "clinical_service_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", :force => true do |t|
    t.integer  "hospital_id"
    t.integer  "facility_type_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_types", :force => true do |t|
    t.string "name"
  end

  create_table "hospitals", :force => true do |t|
    t.string   "full_name"
    t.string   "short_name"
    t.string   "phone"
    t.string   "fax"
    t.text     "address"
    t.string   "region"
    t.float    "maps_latitude"
    t.float    "maps_longitude"
    t.string   "url"
    t.string   "email"
    t.text     "note"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visiting_hours", :force => true do |t|
    t.integer  "hospital_id"
    t.string   "days"
    t.string   "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
