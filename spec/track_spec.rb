require 'pry'
require 'byebug'
require 'spec_helper'
require_relative '../lib/track'

describe Track do

  attr_reader :track
  before(:all) do
    @track = Track.new({title: "Sweet Georgia Brown", artist: "Django", duration: 380, price: 2.00})
  end

  describe '#set_discount' do
    it 'Reduces the price by a given percentage.' do
      expect(track.set_discount(0.1)).to eq 1.8
    end
  end


  describe '#restore_value' do
    it 'Restore the value of the original price.' do
      expect(track.restore_value(0.1)).to eq 2.0
    end
  end


end
