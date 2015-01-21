require 'spec_helper'
require 'pry'

require_relative '../lib/track'

describe Track do

  before(:all) do
    @track1 = Track.new(title: 'Uptown Funk', artist: 'Mark Ronson', duration: 270, price: 1.50)
    @track2 = Track.new(title: 'Thinking Out Loud', artist: 'Ed Sheeran', duration: 281, price: 2.00)
    @track3 = Track.new(title: 'Lips Are Movin', artist: 'Meghan Trainor', duration: 182, price: 1.75)
    @track4 = Track.new(title: 'Blank Space', artist: 'Taylor Swift', duration: 231, price: 1.50)
    @track5 = Track.new(title: 'Take Me To Church', artist: 'Hozier', duration: 241, price: 2.00)
    @track6 = Track.new(title: 'Shake It Off', artist: 'Taylor Swift', duration: 219, price: 1.25)
    @track6 = Track.new(title: 'Centuries', artist: 'Fall Out Boy', duration: 228, price: 2.25)
  end

  # write the initialization method to pass this expectation
  describe '#initialize' do
    it 'creates new instances of the class Track' do
      expect(@track1.class).to eq Track
    end
  end

  # write the set_discount method to pass this expectation
  describe '#set_discount' do
    it 'sets a discounted price for the track' do
      expect(@track5.set_discount('.05')).to eq 1.90
      expect(@track5.price).to eq 1.90
      expect(@track5.discount).to eq 0.05
    end
  end

  # write the reset_discount method to pass this expectation
  describe '#reset_discount' do
    it 'resets the original price for the track and set the discount as a method to call' do
      expect(@track5.reset_discount).to eq 2.00
      expect(@track5.price.class).to eq Float
      expect(@track5.price).to eq 2.00
    end
  end



end
