require 'player'

describe Player do
  subject(:jess) { described_class.new('Jess') }

  describe "#name" do
    it 'knows its name' do
    expect(jess.name).to eq 'Jess'
    end
  end

  describe "#hp" do
    it 'knows its hp' do
      expect(jess.hp).to eq 60
    end
  end

end
