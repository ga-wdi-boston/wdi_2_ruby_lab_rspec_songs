require 'spec_helper'
require_relative '../lib/track'
require_relative '../lib/album'

describe Album do
  before(:all) do
  @title= "My Mix Tape"
  @songs = [
    track_1 = Track.new(title: "Strawberry Fields", artists: "The Beatles", duration: "3:00", price: 1.00),
    track_2 = Track.new(title: "I am the Walrus", artists: "The Beatles", duration: "4:00", price: 1.00),
    track_3 = Track.new(title: "Ruby Tuesday", artists: "The Rolling Stones", duration: "4:00", price: 1.00)
    ]
    @album1 = Album.new(title: @title, tracks: @songs)

  end

  describe '#initialize' do
    it 'creates a new instance of an album' do
      expect(@album1.class).to eq Album
    end
  end

  describe '#duration' do
    it 'returns the total length of the album in seconds' do
      expect(@album1.duration).to eq 660
    end
  end

  describe '#total_price' do
    it 'returns the total price of the album' do
      expect(@album1.total_price).to eq 3.00
    end
  end

  describe '#list_of_artists' do
    it 'returns a list of all artists without duplicating any' do
      expect(@album1.list_of_artists).to eq ["The Beatles", "The Rolling Stones"]
    end
  end

  describe '#is_a_single?' do
    it 'returns true if the album is a single' do
      expect(@album1.is_a_single?).to eq false
    end
  end

  describe 'must have length' do
    it 'raises an error if the album has no tracks' do
      expect{Album.new(tracks: [])}.to raise_error(ArgumentError)
    end
  end
end
