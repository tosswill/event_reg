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

ActiveRecord::Schema.define(:version => 20110819224844) do

  create_table "attendees", :force => true do |t|
    t.string   "email"
    t.boolean  "is_speaker"
    t.string   "ticket_status"
    t.string   "approval_status"
    t.string   "shirt_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.date     "cfp_start"
    t.date     "cfp_end"
    t.date     "ticket_sales_start"
    t.date     "ticket_sales_end"
    t.date     "event_start"
    t.date     "event_end"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
