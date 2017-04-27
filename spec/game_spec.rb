require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }


  describe '#attack' do
    it 'sends #loses_HP to player' do
      expect(player_2).to receive(:loses_HP)
      game.attack(player_2)
    end
  end
end
