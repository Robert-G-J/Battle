require 'player'

describe Player do
  subject(:jess) { described_class.new('Jess') }

  describe "#name" do
    it 'knows its name' do
    expect(jess.name).to eq 'Jess'
    end
  end

end
