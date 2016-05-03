require 'weather'

describe Weather do

  subject(:weather) { described_class.new }

  before do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(8)
  end

  describe '#stormy?' do
    it 'returns stormy weather conditions' do
      expect(weather.stormy?).to eq true
    end
  end
end
