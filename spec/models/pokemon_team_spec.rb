require 'rails_helper'

describe PokemonTeam, type: :model do
  describe 'relationships' do
    it { should belong_to :pokemon }
    it { should belong_to :team }
  end

  # describe 'instance methods' do
  #   describe '#method_name' do
  #     it 'what it does' do
  #
  #       expect(instance.method_name).to eq(nil)
  #     end
  #   end
  # end
end
