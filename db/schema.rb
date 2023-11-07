# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_07_154245) do
  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key"
    t.string "filename"
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "speakers", force: :cascade do |t|
    t.string "Image"
    t.string "Name"
    t.string "Role"
    t.string "Company"
    t.string "Description"
    t.string "Github"
    t.string "LinkedIn"
    t.string "Twitter"
    t.string "Topic"
    t.string "Time"
    t.string "Date"
    t.string "Venue"
    t.string "Topic2"
    t.string "Time2"
    t.string "Date2"
    t.string "Venue2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image_id"
    t.index ["image_id"], name: "index_speakers_on_image_id"
  end

  add_foreign_key "speakers", "active_storage_blobs", column: "image_id"
end
