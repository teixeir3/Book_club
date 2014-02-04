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

ActiveRecord::Schema.define(:version => 20140204133041) do

  create_table "books", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "parent_comment_id"
    t.integer  "book_id",           :default => 0, :null => false
    t.integer  "genre_id",          :default => 0, :null => false
    t.integer  "user_id",                          :null => false
    t.text     "body",                             :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "comments", ["book_id"], :name => "index_comments_on_book_id"
  add_index "comments", ["genre_id"], :name => "index_comments_on_genre_id"
  add_index "comments", ["parent_comment_id"], :name => "index_comments_on_parent_comment_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "genres", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "genres", ["name"], :name => "index_genres_on_name", :unique => true

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "pseudonym"
    t.string   "username",                           :null => false
    t.string   "password_digest",                    :null => false
    t.string   "token",                              :null => false
    t.boolean  "admin",           :default => false, :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
