class CreatePokemonTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_teams do |t|
      t.references :pokemon, foreign_key: true
      t.references :team, foreign_key: true
    end
  end
end
