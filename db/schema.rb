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

ActiveRecord::Schema.define(version: 2021_03_15_210537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemon_teams", force: :cascade do |t|
    t.bigint "pokemon_id"
    t.bigint "team_id"
    t.index ["pokemon_id"], name: "index_pokemon_teams_on_pokemon_id"
    t.index ["team_id"], name: "index_pokemon_teams_on_team_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "pokedex"
    t.string "primary_type"
    t.string "secondary_type"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "pokemon_teams", "pokemons"
  add_foreign_key "pokemon_teams", "teams"
end
