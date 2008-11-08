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

ActiveRecord::Schema.define(:version => 4) do

  create_table "photo_collections", :force => true do |t|
    t.string "name"
    t.string "path"
    t.string "url"
  end

  create_table "photo_taggings", :force => true do |t|
    t.integer "photo_tag_id"
    t.integer "photo_id"
  end

  create_table "photo_tags", :force => true do |t|
    t.string "tag"
  end

  create_table "photos", :force => true do |t|
    t.integer  "photo_collection_id"
    t.integer  "position"
    t.string   "path"
    t.string   "url"
    t.string   "src"
    t.string   "title"
    t.datetime "date"
    t.string   "location"
    t.string   "f_stop"
    t.string   "shutter_speed"
    t.string   "focal_length"
    t.string   "iso"
    t.string   "camera"
    t.string   "lens"
    t.text     "caption"
    t.datetime "last_modified"
  end

  add_index "photos", ["caption"], :name => "photos_fulltext_index"

end
