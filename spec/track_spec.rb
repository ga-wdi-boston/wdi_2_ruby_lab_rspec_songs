require './spec/spec_helper.rb'
require_relative '../lib/track'

RSpec.describe Track do
  before(:each) do
    track_info = [
      {
      :artist => "Beatles",
        :title => "Yesterday",
        :duration => "3:30",
        :price => 1.00},


        {:artist => "Kanye",
        :title => "Only One",
        :duration => "4:00",
        :price => 1.50},


        {:artist => "Black Keys",
        :title => "Everlasting Light",
        :duration => "3:00",
        :price => 1.00}

    ]


    @track = Track.new(track_info)
  end

#Has a title, list of artists (order doesn't matter), duration, and price
  describe '#has_info' do
    it 'checks to ensure title, list of artists, duration, and price' do
      expect(@track.has_info).to be true
    end
  end

#Has a "set discount" method that reduces the price by a given percentage

  describe '#set_discount' do
    it 'reduces the price by a given percentage' do
      reduced_price = [0.75, 1.125, 0.75]
      expect(@track.set_discount(0.75)).to eq reduced_price
    end
  end

#Has a "reset discount" method that restores the price to its original value
    describe '#reset_discount' do
    it 'resets the returned price to the original value' do
      original_price = [1.00, 1.5, 1]
      expect(@track.reset_discount).to eq original_price
    end
  end


end
