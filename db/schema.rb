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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150529001448) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "archetype"
    t.string   "goal"
    t.string   "motive"
    t.integer  "brave"
    t.integer  "fierce"
    t.integer  "wary"
    t.integer  "clever"
    t.integer  "strange"
    t.integer  "experience"
    t.text     "posessions"
    t.text     "losses"
    t.boolean  "pride"
    t.boolean  "health"
    t.boolean  "strength"
    t.boolean  "hope"
    t.boolean  "life"
    t.boolean  "return_brave"
    t.boolean  "return_strange"
    t.boolean  "return_different"
    t.boolean  "dead"
    t.boolean  "unprepared"
    t.text     "notes"
    t.text     "look"
    t.boolean  "virtue_noble"
    t.boolean  "virtue_strong"
    t.boolean  "virtue_unassuming"
    t.boolean  "virtue_practical"
    t.boolean  "virtue_weird"
    t.string   "artifact_name"
    t.integer  "artifact_type"
    t.integer  "artifact_look"
    t.text     "artifact_power"
    t.text     "artifact_worthy"
    t.integer  "artifact_risk"
    t.string   "artifact_risk_soughtby"
    t.integer  "path"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
