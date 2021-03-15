# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

grookey = Pokemon.create!(name: "Grookey", pokedex: 1, primary_type: "Grass" )
sobble = Pokemon.create!(name: "Sobble", pokedex: 7, primary_type: "Water" )
orbeetle = Pokemon.create!(name: "Orbeetle", pokedex: 12, primary_type: "Bug" )
butterfree = Pokemon.create!(name: "Butterfree", pokedex: 15, primary_type: "Flying" )
onix = Pokemon.create!(name: "Onix", pokedex: 178, primary_type: "Rock" )
alcremie = Pokemon.create!(name: "Alcremie", pokedex: 186, primary_type: "Fairy" )

my_team = Team.create!(name: "Dirty J's bad mofos")

poke_team_1 = PokemonTeam.create!(pokemon_id: grookey.id, team_id: my_team.id)
poke_team_2 = PokemonTeam.create!(pokemon_id: sobble.id, team_id: my_team.id)
poke_team_3 = PokemonTeam.create!(pokemon_id: orbeetle.id, team_id: my_team.id)
poke_team_4 = PokemonTeam.create!(pokemon_id: butterfree.id, team_id: my_team.id)
poke_team_5 = PokemonTeam.create!(pokemon_id: onix.id, team_id: my_team.id)
poke_team_6 = PokemonTeam.create!(pokemon_id: alcremie.id, team_id: my_team.id)
