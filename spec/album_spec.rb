require './spec/spec_helper.rb'
require_relative '../lib/album'

RSpec.describe Album do
  before(:each) do
    album_info = [
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
    @entry = Album.new(album_info)
  end
#Has a title and a list of Track objects (order matters)

#Has a title, list of artists (order doesn't matter), duration, and price
  describe '#has_keys' do
    it 'checks to ensure title, list of artists, duration, and price' do
      expect(@entry.has_keys).to eq [:artist, :title, :duration, :price]
    end
  end

#Has a duration (combined duration of all tracks)
  describe '#price_total' do
    it 'checks to ensure the cost is summed' do
      expect(@entry.has_keys).to eq [:artist, :title, :duration, :price]
    end
  end




end
