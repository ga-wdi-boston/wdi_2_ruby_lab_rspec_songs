require_relative '../lib/track'
require 'spec_helper'

describe Track do

  before(:all) do
    @track_1 = Track.new(title: "Strawberry Fields", artists: "The Beatles", duration: "3:00", price: 1.00)
  end

  describe '#initialize' do
    it 'creates a new track' do
      expect(@track_1.class).to eq Track
    end
  end

  describe '#set_discount' do
    it 'reduces the price of the track by the given percentage' do
      expect(@track_1.set_discount(0.2)).to eq 0.8
    end
  end

    describe '#reset_discount' do
    it 'returns the price to the original value' do
      @track_1.set_discount(0.2)
      expect(@track_1.reset_discount).to eq 1.0
    end
  end


end
