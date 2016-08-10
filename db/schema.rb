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

ActiveRecord::Schema.define(version: 20160810020214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "naturesoft_articles_articles", force: :cascade do |t|
    t.string   "image_url"
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "approved",   default: false
    t.string   "status",     default: "active"
    t.integer  "image_id"
    t.index ["user_id"], name: "index_naturesoft_articles_articles_on_user_id", using: :btree
  end

  create_table "naturesoft_articles_articles_categories", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "naturesoft_articles_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "level"
    t.string   "status",      default: "active"
    t.index ["user_id"], name: "index_naturesoft_articles_categories_on_user_id", using: :btree
  end

  create_table "naturesoft_articles_images", force: :cascade do |t|
    t.string   "name"
    t.integer  "width",      default: 1
    t.integer  "height",     default: 1
    t.string   "image_type"
    t.string   "status",     default: "active"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["user_id"], name: "index_naturesoft_articles_images_on_user_id", using: :btree
  end

  create_table "naturesoft_articles_parent_categories", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "naturesoft_banners_banner_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "width",       default: 1
    t.integer  "height",      default: 1
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "status",      default: "active"
    t.string   "image_style"
    t.index ["user_id"], name: "index_naturesoft_banners_banner_types_on_user_id", using: :btree
  end

  create_table "naturesoft_banners_banners", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name"
    t.string   "link_url"
    t.text     "description"
    t.integer  "banner_type_id"
    t.integer  "user_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "status",         default: "active"
    t.index ["banner_type_id"], name: "index_naturesoft_banners_banners_on_banner_type_id", using: :btree
    t.index ["user_id"], name: "index_naturesoft_banners_banners_on_user_id", using: :btree
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

  create_table "naturesoft_slideshows_slides", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "status",       default: "active"
    t.integer  "user_id"
    t.integer  "slideshow_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
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
