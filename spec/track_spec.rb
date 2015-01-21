require 'spec_helper'
require 'pry'
require 'byebug'

require_relative '../lib/track'

describe Track do

    subject(:track) { Track.new('Help!', ['The Beatles'], '2:30', 1.00) }

  describe '#initialize' do
    it 'creates a new instance of a Track with a title, list of artists, duration, and price' do
      expect(track).to be_a Track
    end
  end

  describe '#set_discount' do
    it 'reduces the price of a track by a given percentage' do
      expect(track.set_discount(0.25)).to eq 0.75
    end
  end

  describe '#reset_discount' do
    it 'restores track price to its original value' do
      expect(track.reset_discount).to eq 1.00
    end
  end
end

