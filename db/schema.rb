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

ActiveRecord::Schema.define(:version => 0) do

  create_table "computers", :force => true do |t|
    t.string    "name",         :limit => 20, :null => false
    t.string    "ip",           :limit => 20, :null => false
    t.string    "gpu",          :limit => 50, :null => false
    t.timestamp "time_updated"
  end

  add_index "computers", ["id"], :name => "id", :unique => true

  create_table "hdd", :id => false, :force => true do |t|
    t.integer "id",                        :null => false
    t.integer "capacity",                  :null => false
    t.string  "model",       :limit => 50, :null => false
    t.integer "computer_id",               :null => false
  end

  add_index "hdd", ["computer_id"], :name => "Relationship4"
  add_index "hdd", ["id"], :name => "id", :unique => true

  create_table "motherboard", :id => false, :force => true do |t|
    t.integer "id",                         :null => false
    t.string  "manufacturer", :limit => 40, :null => false
    t.string  "model",        :limit => 40, :null => false
    t.integer "computer_id",                :null => false
  end

  add_index "motherboard", ["computer_id"], :name => "Relationship2"
  add_index "motherboard", ["id"], :name => "id", :unique => true

  create_table "processor", :id => false, :force => true do |t|
    t.integer "id",                             :null => false
    t.string  "name",             :limit => 60, :null => false
    t.integer "consumption",                    :null => false
    t.integer "real_consumption",               :null => false
    t.integer "computer_id",                    :null => false
  end

  add_index "processor", ["computer_id"], :name => "Relationship1"
  add_index "processor", ["id"], :name => "id", :unique => true

  create_table "ram", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "capacity",    :null => false
    t.integer "consumption", :null => false
    t.integer "computer_id", :null => false
  end

  add_index "ram", ["computer_id"], :name => "Relationship3"
  add_index "ram", ["id"], :name => "id", :unique => true

end
