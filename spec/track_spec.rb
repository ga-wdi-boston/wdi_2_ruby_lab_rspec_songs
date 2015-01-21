require 'spec_helper'
require 'pry-byebug'


require_relative '../lib/track'

describe Track do

  before(:all) do
    @track1 = Track.new(title: "Yo", artist: "Lil Yo", duration: 300, price: '$0.99')
    @track2 = Track.new(title: "Yo", artist: "Lil Yo", duration: 300, price: '$0.99')
  end

  describe '#initialize' do
    it "Has a title, list of artists (order doesn't matter), duration, and price" do
      expect(@track1.class).to eq Track
      expect(@track2.class).to eq Track
    end
  end

  describe '#set_discount' do
    it 'Has a "set discount" method that reduces the price by a given percentage' do
      expect(@track1.set_discount(10)).to be_within(0.01).of(0.89)
    end
  end

  describe '#reset_discount' do
    it 'Has a "reset discount" method that restores the price to its original value' do
      expect(@track1.reset_discount).to eq '$0.99'
    end
  end

end

