require_relative '../lib/track'

RSpec.describe Track do
  describe '#initialize' do
    it 'creates a new instance of a Album with a title and tracks' do
      track = Track.new("Holy Shnikies", ["Young Jim", "Crankshaft"], 206, 1)
      expect(track).to be_a Track
    end
  end

  describe '#set_discount' do
    track = Track.new("Holy Shnikies", ["Young Jim", "Crankshaft"], 206, 1)
    it 'sets a discount on the price of the track' do
      expect(track.set_discount(0.2).price).to eq 0.8
    end
  end

  describe '#reset_discount' do
    track = Track.new("Holy Shnikies", ["Young Jim", "Crankshaft"], 206, 1)
    track = track.set_discount(0.2)
    it 'removes a discount from the price of a track' do
      expect(track.reset_discount).to eq 1
    end
  end
end
