require_relative '../lib/track'
require 'spec_helper'

RSpec.describe Track do

  before (:all) do
    @new_track = Track.new(title: "Sonata Lugubrio", artist: "Beewolfmart", duration: "5:00", price: 1.00)
  end



  describe '#initialize' do
    it 'creates a new instance of Track with title, artist, duration, and price!' do
      expect(@new_track.class).to eq Track
    end
  end

  describe '#set_discount' do
    it 'reduces the price of the current track, savings!' do
      expect(@new_track.set_discount(0.5)).to eq 0.5
    end
  end

  describe '#reset_discount' do
    it 'resets the discount to original track price' do
      @new_track.set_discount(0.5)
      expect (@new_track.reset_discount).to eq 1.0
    end
  end

end
