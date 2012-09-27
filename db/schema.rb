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

ActiveRecord::Schema.define(:version => 20120927214600) do

  create_table "assertions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_processes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  add_index "business_processes", ["owner_id"], :name => "index_business_processes_on_owner_id"

  create_table "controls", :force => true do |t|
    t.string   "name"
    t.string   "who"
    t.string   "as"
    t.string   "how"
    t.string   "exception"
    t.string   "evidence"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.string   "do_what"
  end

  add_index "controls", ["owner_id"], :name => "index_controls_on_owner_id"

  create_table "objectives", :force => true do |t|
    t.string   "what"
    t.string   "is"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.integer  "assertion_id"
  end

  add_index "objectives", ["assertion_id"], :name => "index_objectives_on_assertion_id"
  add_index "objectives", ["owner_id"], :name => "index_objectives_on_owner_id"

  create_table "process_steps", :force => true do |t|
    t.string   "name"
    t.string   "supplier"
    t.string   "input"
    t.string   "description"
    t.string   "output"
    t.string   "customer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_process_id"
    t.integer  "owner_id"
  end

  add_index "process_steps", ["business_process_id"], :name => "index_process_steps_on_business_process_id"
  add_index "process_steps", ["owner_id"], :name => "index_process_steps_on_owner_id"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "inactive"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
