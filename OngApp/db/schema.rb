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

ActiveRecord::Schema.define(version: 20190619013348) do

  create_table "Posts_Tags", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.bigint "Post_id", null: false
    t.bigint "Tag_id", null: false
    t.index ["Post_id", "Tag_id"], name: "index_Posts_Tags_on_post_id_and_tag_id"
    t.index ["Tag_id", "Post_id"], name: "index_Posts_Tags_on_tag_id_and_post_id"
  end

  create_table "Tags_Users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.bigint "Tag_id", null: false
    t.bigint "User_id", null: false
    t.index ["Tag_id", "User_id"], name: "index_Tags_Users_on_tag_id_and_user_id"
    t.index ["User_id", "Tag_id"], name: "index_Tags_Users_on_user_id_and_tag_id"
  end

  create_table "appointments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "fechaEnlist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_appointments_on_post_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "follows", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.bigint "organization_id"
    t.bigint "user_id"
    t.datetime "fechaFlw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_follows_on_organization_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "organizations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "nombreOng"
    t.string "pwdOng"
    t.text "desc"
    t.string "sede"
    t.integer "tel"
    t.string "contact"
    t.string "bnnr"
    t.string "ftOng"
    t.integer "cantFlw"
    t.date "fund"
    t.float "rating", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.bigint "organization_id"
    t.text "descPst"
    t.string "lugar"
    t.datetime "hora"
    t.string "ftPst"
    t.integer "cantMin"
    t.integer "cantMax"
    t.integer "cantAct"
    t.datetime "published"
    t.boolean "full"
    t.integer "postTime"
    t.boolean "expired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_posts_on_organization_id"
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "nombreTag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "nombreUsu"
    t.string "apellidoUsu"
    t.string "pwdUsu"
    t.integer "edad"
    t.string "gen"
    t.string "localidadUsu"
    t.integer "telUsu"
    t.string "mail"
    t.string "ocupacion"
    t.string "ftUsu"
    t.integer "lvl"
    t.integer "exp"
    t.integer "cantFlw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
