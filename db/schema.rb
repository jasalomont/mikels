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

ActiveRecord::Schema.define(version: 20190306231848) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "agreements", force: :cascade do |t|
    t.string "custnmbr"
    t.string "timespan"
    t.date "start"
    t.date "end"
    t.integer "amount_level1"
    t.string "category"
    t.float "pcnt_level1"
    t.float "pcnt_level2"
    t.float "pcnt_level3"
    t.integer "amount_level2"
    t.integer "amount_level3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.integer "year"
    t.string "custnmbr"
    t.string "salsterr"
    t.string "gerente"
    t.string "slprsnid"
    t.string "sopnumbe"
    t.integer "ene"
    t.integer "feb"
    t.integer "mar"
    t.integer "abr"
    t.integer "may"
    t.integer "jun"
    t.integer "jul"
    t.integer "ago"
    t.integer "oct"
    t.integer "sep"
    t.integer "nov"
    t.integer "dic"
    t.integer "total"
    t.integer "agreement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complains", force: :cascade do |t|
    t.integer "user_id"
    t.integer "complaintype_id"
    t.boolean "solved"
    t.text "description"
    t.integer "department_id"
    t.string "itemnmbr"
    t.string "sopnumbe"
    t.integer "profile_id"
    t.integer "rating"
    t.string "status"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaintypes", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_segments", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "custnmbr"
    t.string "custname"
    t.integer "customer_segment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nineteensales", force: :cascade do |t|
    t.string "custnmbr"
    t.string "salsterr"
    t.string "slprsnid"
    t.string "gerente"
    t.string "sopnumbe"
    t.string "itemnmbr"
    t.integer "vta"
    t.integer "cantidad"
    t.integer "cost"
    t.integer "vta_ene"
    t.integer "cantidad_ene"
    t.integer "cost_ene"
    t.integer "vta_feb"
    t.integer "cantidad_feb"
    t.integer "cost_feb"
    t.integer "vta_mar"
    t.integer "cantidad_mar"
    t.integer "cost_mar"
    t.integer "vta_abr"
    t.integer "cantidad_abr"
    t.integer "cost_abr"
    t.integer "vta_may"
    t.integer "cantidad_may"
    t.integer "cost_may"
    t.integer "vta_jun"
    t.integer "cantidad_jun"
    t.integer "cost_jun"
    t.integer "vta_jul"
    t.integer "cantidad_jul"
    t.integer "cost_jul"
    t.integer "vta_ago"
    t.integer "cantidad_ago"
    t.integer "cost_ago"
    t.integer "vta_sep"
    t.integer "cantidad_sep"
    t.integer "cost_sep"
    t.integer "vta_oct"
    t.integer "cantidad_oct"
    t.integer "cost_oct"
    t.integer "vta_nov"
    t.integer "cantidad_nov"
    t.integer "cost_nov"
    t.integer "vta_dic"
    t.integer "cantidad_dic"
    t.integer "cost_dic"
    t.integer "dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orgcharts", force: :cascade do |t|
    t.integer "department_id"
    t.integer "salsterr_id"
    t.string "slprsnid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productlines", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "subcategory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "itemnmbr"
    t.string "parent_sku"
    t.string "relationship_type"
    t.string "sku_parent_related"
    t.string "item_sku_nuevo"
    t.string "barcode"
    t.integer "brand_id"
    t.string "item_name"
    t.integer "category_id"
    t.integer "productline_id"
    t.integer "subcategory_id"
    t.text "product_description"
    t.string "product_short_description"
    t.string "model"
    t.string "product_includes"
    t.string "product_warranty"
    t.float "product_weight"
    t.float "product_width"
    t.float "product_length"
    t.float "product_height"
    t.float "product_volume"
    t.float "product_distribution_volume"
    t.date "product_new_date_start"
    t.date "product_new_date_ends"
    t.integer "max_order_quantity"
    t.integer "standard_price"
    t.integer "list_price"
    t.string "attributes_bullet_point1"
    t.string "attributes_bullet_point2"
    t.string "attributes_bullet_point3"
    t.string "attributes_bullet_point4"
    t.string "attributes_bullet_point5"
    t.string "generic_keywords1"
    t.string "generic_keywords2"
    t.string "generic_keywords3"
    t.string "generic_keywords4"
    t.string "main_image_url"
    t.string "left_image_url1"
    t.string "right_image_url2"
    t.string "back_image_url3"
    t.string "use1_image_url4"
    t.string "use2_image_url5"
    t.string "use3_image_url5"
    t.string "link_sku_related1"
    t.string "link_sku_related2"
    t.string "link_sku_related3"
    t.string "link_sku_upsell1"
    t.string "link_sku_upsell2"
    t.string "link_sku_upsell3"
    t.string "link_sku_crosssell1"
    t.string "link_sku_crosssell2"
    t.string "link_sku_crosssell3"
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "last_name"
    t.string "nick_name"
    t.string "phone"
    t.string "mobile"
    t.string "profile_pic"
    t.integer "rank_id"
    t.string "city_base"
    t.text "address"
    t.boolean "active"
    t.string "slprsnid"
    t.integer "salsterr_id"
    t.date "start"
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string "title"
    t.integer "level"
    t.text "description"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "state"
    t.string "state_code"
    t.integer "statenmbr"
    t.integer "salsterr_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salsterrs", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scomments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "solution_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.integer "complain_id"
    t.text "message"
    t.boolean "close"
    t.integer "user_id"
    t.boolean "like"
    t.integer "scomment_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.integer "category_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "password"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "ventas2018s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
