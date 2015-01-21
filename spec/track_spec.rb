require 'pry'
require_relative '../lib/track'
# require_relative '../lib/album'

RSpec.describe Track do

  describe '#initialize' do
    track = Track.new(title: 'Ruby Soho', artists: ['Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman'], duration: 157, price: 1.0)

    it 'creates a new instance of a Track with a title, artists, duration, and price' do

      expect(track).to be_a Track
    end
  end

  describe '#price' do
    track = Track.new(title: 'Ruby Tuesday', artists: ['Mick Jagger', 'Keith Richards'], duration: 214, price: 1.0)

    it 'returns the price of the track' do

      expect(track.price).to eq 1.0

      track.set_discount(0.3)

      expect(track.price).to eq 0.7
    end
  end

  describe '#set_discount' do
    track = Track.new(title: 'Ruby Soho', artists: ['Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman'], duration: 157, price: 1.0)

    it 'reduces the price of the track by a given percentage' do

      expect(track.set_discount(0.2)).to eq 0.8
      expect(track.price).to eq 0.8
      # expect(track.set_discount(1)).to raise_error(ArgumentError)
      # need help with this
    end
  end

  describe '#reset_discount' do
    track = Track.new(title: 'Ruby Soho', artists: ['Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman'], duration: 157, price: 1.0)
    track.set_discount(0.4)

    it "restores price to it's initial value" do

      expect(track.price).to eq 0.6
      expect(track.reset_discount).to eq 1.0
    end
  end

end
