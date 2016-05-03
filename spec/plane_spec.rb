require 'plane'

describe Plane do

  subject(:plane) { described_class.new }

  it 'returns plane status' do
    expect(plane.status).to eq "in air"
  end
end
