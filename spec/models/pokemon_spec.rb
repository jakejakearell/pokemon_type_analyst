require 'rails_helper'

describe Pokemon, type: :model do
  describe 'relationships' do
    it { should have_many :pokemon_teams }
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
