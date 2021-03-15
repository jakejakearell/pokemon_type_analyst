require 'rails_helper'

describe Team, type: :model do
  describe 'relationships' do
    it { should have_many :pokemon_teams }
    it { should have_many(:pokemon).through(:pokemon_teams) }
  end
  #
  # describe 'instance methods' do
  #   describe '#method_name' do
  #     it 'what it does' do
  #
  #       expect(instance.method_name).to eq(nil)
  #     end
  #   end
  # end
end
