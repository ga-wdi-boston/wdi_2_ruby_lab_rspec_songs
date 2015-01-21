require 'spec_helper'
require 'byebug'

require_relative '../lib/track'

RSpec.describe Track do

  before(:all) do
    #@track is our instance variable
    @track = Track.new("Red House", "Jimi Hendrix", 4, 2.00)
  end

  describe '#find_track_title' do
    it 'return the title of the track' do
      expect(@track.find_track_title).to eq "Red House"
    end
  end

  describe '#set_discount' do
    it 'set the price to new discounted price' do
      expect(@track.set_discount(0.5)).to eq 1.50
    end
  end

  describe '#reset_discount' do
    it 'set the price to the original price' do
      expect(@track.reset_discount).to eq 2.00
    end
  end

# binding.byebug

end
