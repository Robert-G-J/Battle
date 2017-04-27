require 'player'

describe Player do
  subject(:jess) { described_class.new('Jess') }
  subject(:bernie) { described_class.new('Bernie') }

  describe "#name" do
    it 'knows its name' do
    expect(jess.name).to eq 'Jess'
    end
  end

  describe "#hp" do
    it 'knows its hp' do
      expect(jess.hp).to eq Player::DEFAULT_HEALTH
    end
  end

  describe '#loses_HP' do
      it 'deducts 10 from player 2' do
        expect{ jess.loses_HP }.to change{ jess.hp }.by(-Player::DEFAULT_DAMAGE)
      end
    end
end
