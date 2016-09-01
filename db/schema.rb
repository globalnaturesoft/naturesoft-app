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

ActiveRecord::Schema.define(version: 20160901024059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "naturesoft_articles_articles", force: :cascade do |t|
    t.string   "image_url"
    t.string   "title"
    t.text     "content"
    t.string   "status",     default: "active"
    t.boolean  "approved",   default: false
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["user_id"], name: "index_naturesoft_articles_articles_on_user_id", using: :btree
  end

  create_table "naturesoft_articles_articles_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "article_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["article_id"], name: "index_naturesoft_articles_articles_categories_on_article_id", using: :btree
    t.index ["category_id"], name: "index_naturesoft_articles_articles_categories_on_category_id", using: :btree
  end

  create_table "naturesoft_articles_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "parent_id"
    t.text     "description"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_articles_categories_on_user_id", using: :btree
  end

  create_table "naturesoft_banners_banners", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name"
    t.string   "link_url"
    t.text     "description"
    t.string   "status",       default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "custom_order"
    t.index ["user_id"], name: "index_naturesoft_banners_banners_on_user_id", using: :btree
  end

  create_table "naturesoft_contacts_contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.text     "message"
    t.string   "subject"
    t.string   "status",     default: "active"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "naturesoft_galleries_galleries", force: :cascade do |t|
    t.string   "name"
    t.integer  "height"
    t.integer  "width"
    t.string   "image_style"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_galleries_galleries_on_user_id", using: :btree
  end

  create_table "naturesoft_galleries_images", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "status",       default: "active"
    t.integer  "user_id"
    t.integer  "gallery_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "custom_order", default: 0
    t.index ["gallery_id"], name: "index_naturesoft_galleries_images_on_gallery_id", using: :btree
    t.index ["user_id"], name: "index_naturesoft_galleries_images_on_user_id", using: :btree
  end

  create_table "naturesoft_menus_menus", force: :cascade do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "parent_id"
    t.text     "description"
    t.string   "status",        default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "menu"
    t.string   "params"
    t.text     "cache_options"
    t.integer  "custom_order",  default: 0
    t.index ["user_id"], name: "index_naturesoft_menus_menus_on_user_id", using: :btree
  end

  create_table "naturesoft_nsmodules", force: :cascade do |t|
    t.string   "name"
    t.string   "module"
    t.text     "options"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "position"
    t.integer  "custom_order", default: 0
    t.index ["user_id"], name: "index_naturesoft_nsmodules_on_user_id", using: :btree
  end

  create_table "naturesoft_options", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.text     "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "naturesoft_partners_partners", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.string   "website"
    t.integer  "height"
    t.integer  "width"
    t.string   "scale_type"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_partners_partners_on_user_id", using: :btree
  end

  create_table "naturesoft_products_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "level"
    t.integer  "parent_id"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_products_categories_on_user_id", using: :btree
  end

  create_table "naturesoft_products_categories_products", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_naturesoft_products_categories_products_on_category_id", using: :btree
    t.index ["product_id"], name: "index_naturesoft_products_categories_products_on_product_id", using: :btree
  end

  create_table "naturesoft_products_images", force: :cascade do |t|
    t.string   "image_url"
    t.string   "title"
    t.boolean  "is_main",    default: false
    t.integer  "product_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["product_id"], name: "index_naturesoft_products_images_on_product_id", using: :btree
  end

  create_table "naturesoft_products_labels", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_products_labels_on_user_id", using: :btree
  end

  create_table "naturesoft_products_labels_products", force: :cascade do |t|
    t.integer  "label_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label_id"], name: "index_naturesoft_products_labels_products_on_label_id", using: :btree
    t.index ["product_id"], name: "index_naturesoft_products_labels_products_on_product_id", using: :btree
  end

  create_table "naturesoft_products_manufacturers", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.text     "description"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_products_manufacturers_on_user_id", using: :btree
  end

  create_table "naturesoft_products_product_properties", force: :cascade do |t|
    t.string   "value"
    t.decimal  "price"
    t.integer  "product_id"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["product_id"], name: "index_naturesoft_products_product_properties_on_product_id", using: :btree
    t.index ["property_id"], name: "index_naturesoft_products_product_properties_on_property_id", using: :btree
  end

  create_table "naturesoft_products_products", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.decimal  "new_price"
    t.decimal  "old_price"
    t.integer  "discount"
    t.decimal  "quantity"
    t.string   "unit"
    t.string   "tags"
    t.string   "status",            default: "active"
    t.boolean  "is_show",           default: false
    t.text     "short_description"
    t.text     "description"
    t.integer  "manufacturer_id"
    t.integer  "image_id"
    t.integer  "user_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["image_id"], name: "index_naturesoft_products_products_on_image_id", using: :btree
    t.index ["manufacturer_id"], name: "index_naturesoft_products_products_on_manufacturer_id", using: :btree
    t.index ["user_id"], name: "index_naturesoft_products_products_on_user_id", using: :btree
  end

  create_table "naturesoft_products_products_properties", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["product_id"], name: "index_naturesoft_products_products_properties_on_product_id", using: :btree
    t.index ["property_id"], name: "index_naturesoft_products_products_properties_on_property_id", using: :btree
  end

  create_table "naturesoft_products_properties", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_products_properties_on_user_id", using: :btree
  end

  create_table "naturesoft_projects_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "level"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_projects_categories_on_user_id", using: :btree
  end

  create_table "naturesoft_projects_images", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "status",      default: "active"
    t.boolean  "is_main",     default: false
    t.integer  "project_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["project_id"], name: "index_naturesoft_projects_images_on_project_id", using: :btree
  end

  create_table "naturesoft_projects_projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "status",       default: "active"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "custom_order", default: "0"
    t.index ["category_id"], name: "index_naturesoft_projects_projects_on_category_id", using: :btree
    t.index ["user_id"], name: "index_naturesoft_projects_projects_on_user_id", using: :btree
  end

  create_table "naturesoft_slideshows_slides", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "status",       default: "active"
    t.integer  "user_id"
    t.integer  "slideshow_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "custom_order"
    t.index ["slideshow_id"], name: "index_naturesoft_slideshows_slides_on_slideshow_id", using: :btree
    t.index ["user_id"], name: "index_naturesoft_slideshows_slides_on_user_id", using: :btree
  end

  create_table "naturesoft_slideshows_slideshows", force: :cascade do |t|
    t.string   "name"
    t.integer  "height"
    t.integer  "width"
    t.string   "image_style"
    t.string   "status",      default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_naturesoft_slideshows_slideshows_on_user_id", using: :btree
  end

  create_table "naturesoft_users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.index ["email"], name: "index_naturesoft_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_naturesoft_users_on_reset_password_token", unique: true, using: :btree
  end

end
