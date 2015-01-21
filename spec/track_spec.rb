require 'spec_helper'
require_relative '../lib/track'

describe Track do
  before(:all) do
    @track = Track.new(
    @name ='yellow',
    @artist = 'coldplay',
    @duration = '3:46',
    @price = 0.99)

    @track2 = Track.new(
    @name ='warning sign',
    @artist = 'coldplay',
    @duration = '5:46',
    @price = 0.99)
  end

  describe 'initialize' do
    it 'initializes a new track with a title, artists, duration, and price' do
      expect(@track).to be_a (Track)
    end
  end

  describe 'reduce_price' do
    it 'reduces the price of a track by a given percent'do
      expect(@track.reduce_price(0.5)).to eq (0.495)
      expect(@track2.reduce_price(0.75)).to eq (0.2475)
    end
  end

  describe 'reset_discount' do
    it 'resets the price of the track back to the pre discount value' do
       expect(@track.reset_discount).to eq (0.99)
    end
  end
end
