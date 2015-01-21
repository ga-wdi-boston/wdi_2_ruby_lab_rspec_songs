require_relative '../lib/track'
require_relative '../lib/album'
require 'pry-byebug'

describe Track do
  before(:all) do
    @track1 = Track.new("Title", ["Artist1", "Artist2", "Artist3"], "4:33", 0.99)
  end

  describe '#initialize' do
    it 'creates new instances of the class Track' do
    expect(@track1.class).to eq Track
    end
  end

  describe '#set_discount' do
    it 'changes the price based on passed in discount.' do
      @track1.set_discount(0.25)
      expect(@track1.price).to eq 0.25
    end
  end

  describe '#reset_discount' do
    it 'resets to original price' do
      @track1.set_discount(0.25)
      @track1.reset_discount
      expect(@track1.price).to eq 0.99
    end
  end

  describe '#to_dur' do
    it 'returns the duration as a Float' do
      expect(@track1.to_dur).to eq 4.55
    end
  end

  describe 'TrackError' do
    it 'returns an error if an album has a discount of over 100%.' do
      expect(@track1.set_discount(1.2)).to raise_error TrackError
      expect(@track1.set_discount(0.8)).to_not raise_error TrackError
    end
  end
end
