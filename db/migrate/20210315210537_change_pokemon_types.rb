class ChangePokemonTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :secondary_type, :string
    rename_column :pokemons, :type, :primary_type
  end
end
