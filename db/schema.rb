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

ActiveRecord::Schema[7.2].define(version: 2025_03_15_212105) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "known_for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carted_products", force: :cascade do |t|
    t.string "product_id"
    t.string "order_id"
    t.string "quantity"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_products", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "subtotal", precision: 9, scale: 2
    t.decimal "tax", precision: 9, scale: 2
    t.decimal "total", precision: 9, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date_ordered"
    t.string "status"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "supplier_id"
    t.integer "category_id"
    t.string "image"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
