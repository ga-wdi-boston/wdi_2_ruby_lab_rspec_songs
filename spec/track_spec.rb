require './spec/spec_helper.rb'
require_relative '../lib/track'

RSpec.describe Track do
  before(:each) do
    test_track = {
      title: "Bounce",
      artist: ["Excision", "Space Laces"],
      duration: 4.20,
      price: 1.0
    }
    @track = Hash.new(test_track)
  end

  describe '#set_price' do
    it 'reduces the price by a given percentage' do
      expect(@track.set_price(0.2)).to eq 0.8
      expect(@track.set_price(0.9)).to eq 0.1
    end
  end

  describe '#reset_discount' do
    it 'returns the price back to 1.0' do
      expect(@track.reset_discount).to eq 1.0
    end
  end
end
