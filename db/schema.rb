ActiveRecord::Schema[7.1].define(version: 2024_09_06_171349) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "picture"
    t.string "criteria", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end
end
