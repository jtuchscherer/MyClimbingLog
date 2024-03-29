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

ActiveRecord::Schema.define(:version => 20120322053905) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "gym_id"
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.text     "content"
    t.string   "title"
    t.string   "ip_address"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.datetime "creation_date"
  end

  create_table "gyms", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "address"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "gym_id"
    t.integer  "ordinal_value"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "routes", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "area_id"
    t.integer  "rating_id"
  end

  create_table "user_feedbacks", :force => true do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.integer  "rating_id"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
