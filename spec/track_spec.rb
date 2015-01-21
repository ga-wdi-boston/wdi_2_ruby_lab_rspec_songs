require 'spec_helper'
require_relative '../lib/track'

describe Track do
  before(:all) do 
    @track = Track.new(title: "Orbiting", artist: "The Weepies", duration: "2:55", price: 1.0)
    @track2 = Track.new(title: "Wish I Could Forget", artist: "The Weepies", duration: "2:56", price: 1.00)
    @track3 = Track.new(title: "World Spins Madly On", artist: "The Weepies", duration: "2:45", price: 1.00)
  end

  describe 'set_discount' do
    it 'replaces the base price of a track with the new price' do
      expect(@track.set_discount(0.20)).to eq 0.80
      expect(@track2.set_discount(0.30)).to eq 0.70
      expect(@track3.set_discount(0.90)).to eq 0.10
    end
  end

  describe 'reset_discount' do
    it 'resets the price of the track to its base price' do
      expect(@track.reset_discount).to eq 1.00
    end
  end

end