require 'spec_helper.rb'
require 'pry'
require 'byebug'

require_relative '../lib/track'

RSpec.describe Track do

  subject(:track) { Track.new("Blank Space","Taylor Swift","4:56",1.00 ) }

  describe '#initialize' do
    it 'creates a new instance of the Track class' do
      expect(track).to be_a Track
    end
  end

  describe '#set_discount' do
    it 'Change the price after the discount' do
      expect(track.set_discount(0.5)).to eq 0.50
    end
  end

  describe '#reset_discount' do
    it 'Change the price to the original value' do
      expect(track.reset_discount).to eq 1.00
    end
  end



end
