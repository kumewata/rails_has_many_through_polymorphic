# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_21_052528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_recipients", force: :cascade do |t|
    t.string "address"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "payment_type"
  end

  create_table "service_a_contracts", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "plan_type"
    t.index ["user_id"], name: "index_service_a_contracts_on_user_id"
  end

  create_table "service_a_orders", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "plan_type"
    t.index ["user_id"], name: "index_service_a_orders_on_user_id"
  end

  create_table "service_b_contracts", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "plan_type"
    t.index ["user_id"], name: "index_service_b_contracts_on_user_id"
  end

  create_table "service_b_orders", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "plan_type"
    t.index ["user_id"], name: "index_service_b_orders_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "holder_id"
    t.string "holder_type"
    t.bigint "target_id"
    t.string "target_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

end
