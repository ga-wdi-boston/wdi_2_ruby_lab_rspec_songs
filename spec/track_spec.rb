
require_relative '../lib/track'

describe Track do

  before(:all) do
    @track1 = Track.new(title: "Blank Space", artists: "Taylor Swift", price: 1.99 , duration: "3:52")
  end

  describe '#initialize' do
    it 'creates a new instance of a Track with a title, artist, price, and duration' do
      expect(@track1.class).to eq Track
    end
  end

  describe '#set_discount' do
    it 'changes the price of a track' do
      expect(@track1.set_discount(0.2)).to be_within(0.1).of(1.592)

    end
  end

   describe '#reset_discount' do
    it 'resets the price of a track' do
      expect(@track1.reset_discount(0.2)).to eq 1.99
    end
  end

end

