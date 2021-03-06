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

  create_table "answers", :force => true do |t|
    t.string  "cmd"
    t.integer "user_id"
    t.integer "challenge_id"
  end

  add_index "answers", ["challenge_id"], :name => "index_answers_on_challenge_id"
  add_index "answers", ["user_id"], :name => "index_answers_on_user_id"

  create_table "challenges", :force => true do |t|
    t.string   "title"
    t.text     "task"
    t.text     "additional_information"
    t.text     "console"
    t.text     "verification_code"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenges", ["course_id"], :name => "index_challenges_on_course_id"

  create_table "courses", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                      :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.string   "authentication_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "role",                   :default => "user", :null => false
    t.string   "full_name",                                  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
