require 'airport'

describe Airport do

    let(:plane) {double(:plane)}

  context 'when initial capacity is changed' do
    it 'overrides default capacity' do
      allow(plane).to receive(:status).and_return("landed")
      weather = double(:weather, condition: false)
      airport = Airport.new(50)
      50.times {airport.landing(plane, weather)}
      expect {airport.landing(plane, weather)}.to raise_error "Landing denied airport full"
    end
  end

  context 'when stormy' do
      it 'denies landing' do
        plane = double(:plane, status: "")
        weather = double(:weather, condition: true)
        expect {subject.landing(plane, weather)}.to raise_error "Cannot land due to storm"
      end

      it 'denies take off' do
        plane = double(:plane, status: "landed")
        weather = double(:weather, condition: false)
        subject.landing(plane, weather)
        weather = double(:weather, condition: true)
        expect {subject.take_off(plane, weather)}.to raise_error "Cannot take off due to storm"
      end
  end

  context 'when airport is full' do
      it 'denies landings' do
        plane = double(:plane, status: "")
        weather = double(:weather, condition: false)
        20.times {subject.landing(plane, weather)}
        expect {subject.landing(plane, weather)}.to raise_error "Landing denied airport full"
      end
  end


    context 'when good weather' do
      it 'allows to land and confirm landing' do
        plane = double(:plane, status: "landed", confirmation: "landed")
        weather = double(:weather, condition: false)
        subject.landing(plane, weather)
        expect(plane.confirmation).to eq "landed"
      end

      it 'allows to take off and confirm taking off' do
        plane = double(:plane, status: "in air", confirmation: "in air")
        weather = double(:weather, condition: false)
        subject.landing(plane, weather)
        subject.take_off(plane, weather)
        expect(plane.confirmation).to eq "in air"
      end
    end
end
