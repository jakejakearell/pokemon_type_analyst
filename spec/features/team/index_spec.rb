require 'rails_helper'

RSpec.describe "team index page", type: :feature do
  before :each do
    @grookey = Pokemon.create!(name: "Grookey", pokedex: 1, primary_type: "Grass" )
    @sobble = Pokemon.create!(name: "Sobble", pokedex: 7, primary_type: "Water" )
    @orbeetle = Pokemon.create!(name: "Orbeetle", pokedex: 12, primary_type: "Bug" )
    @butterfree = Pokemon.create!(name: "Butterfree", pokedex: 15, primary_type: "Flying" )
    @onix = Pokemon.create!(name: "Onix", pokedex: 178, primary_type: "Rock" )
    @alcremie = Pokemon.create!(name: "Alcremie", pokedex: 186, primary_type: "Fairy" )

    @my_team = Team.create!(name: "Dirty J's bad mofos")

    PokemonTeam.create!(pokemon_id: @grookey.id, team_id: @my_team.id)
    PokemonTeam.create!(pokemon_id: @sobble.id, team_id: @my_team.id)
    PokemonTeam.create!(pokemon_id: @orbeetle.id, team_id: @my_team.id)
    PokemonTeam.create!(pokemon_id: @butterfree.id, team_id: @my_team.id)
    PokemonTeam.create!(pokemon_id: @onix.id, team_id: @my_team.id)
    PokemonTeam.create!(pokemon_id: @alcremie.id, team_id: @my_team.id)

  end
  it "I can see all the pokemon on my current team" do

    visit pokemon_team_dashboard_index_path(@my_team)

    expect(page).to have_content(@grookey.name)
    expect(page).to have_content(@sobble.name)
    expect(page).to have_content(@orbeetle.name)
    expect(page).to have_content(@butterfree.name)
    expect(page).to have_content(@onix.name)
    expect(page).to have_content(@alcremie.name)
  end
end
