require 'spec_helper'
#require_relative '../lib/track'
require_relative '../lib/album'

describe Album do
  before(:all) do
  @title= "Good Songs"
  @songs = [
    track_1 = Track.new(title: "Strawberry Fields", artists: "The Beatles", duration: 3.5, price: 1.00),
    track_2 = Track.new(title: "I am the Walrus", artists: "The Beatles", duration: 4.5, price: 1.00),
    track_3 = Track.new(title: "Ruby Tuesday", artists: "The Rolling Stones", duration: 4.0, price: 1.00)
    ]
    @album1 = Album.new(title: @title, tracks: @songs)

  end

  describe '#initialize' do
    it 'creates a new instance of an album' do
      expect(@album1.class).to eq Album
    end
  end

  describe '#duration' do
    it 'lists the total duration of all songs' do
      expect(@album1.duration).to eq 12
    end
  end

  describe '#total_price' do
    it 'totals the total price of all songs' do
      expect(@album1.total_price).to eq 3
    end
  end

  describe '#list_of_artists' do
    it 'lists the names of artists' do
      list_of_artists_result = ["The Beatles", "The Rolling Stones"]
      expect(@album1.list_of_artists).to eq list_of_artists_result
    end
  end

  describe '#album_single?' do
    it 'returns whether the album is a single' do
      expect(@album1.album_single?).to eq false
    end
  end

end
