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

ActiveRecord::Schema[7.0].define(version: 2024_02_22_013619) do
  create_table "frauds", charset: "utf8", force: :cascade do |t|
    t.integer "card_code"
    t.string "card_name"
    t.text "send_script"
    t.text "fee_script"
    t.integer "card_fee"
    t.integer "etc_fee"
    t.text "public_script"
    t.text "specific_script"
    t.text "etc_script"
    t.text "cancell_card_script"
    t.text "cancell_specific_script"
    t.text "cancell_etc_script"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "losses", charset: "utf8", force: :cascade do |t|
    t.integer "card_code"
    t.string "card_name"
    t.text "send_script"
    t.text "fee_script"
    t.integer "card_fee"
    t.integer "etc_fee"
    t.text "public_script"
    t.text "specific_script"
    t.text "etc_script"
    t.text "cancell_card_script"
    t.text "cancell_specific_script"
    t.text "cancell_etc_script"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
