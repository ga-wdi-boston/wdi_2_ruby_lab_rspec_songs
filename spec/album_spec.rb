require 'spec_helper'
require_relative '../lib/album'
require_relative '../lib/track'

describe Album do
  before (:all) do
    @album1 = Album.new(
      @title = 'greatest hits',
      @tracks = [
        @track = Track.new(
        @name ='yellow',
        @artist = 'coldplay',
        @duration = '3:46',
        @price = 0.99),

        @track2 = Track.new(
        @name ='sigh no more',
        @artist = 'mumford and sons',
        @duration = '5:46',
        @price = 0.99),

        @track3 = Track.new(
        @name ='the scientist',
        @artist = 'coldplay',
        @duration = '4:46',
        @price = 1.99)
      ]
    )
  end

  describe 'initialize' do
    it 'initializes a new album with a title, artists, duration, and price' do
        expect(@album1).to be_a (Album)
    end
  end

  describe 'duration' do
    it 'calculates the duration of the album' do
      expect(@album1.duration).to eq ('14:18')
    end
  end

  describe 'price' do
    it 'calculates the price of the album' do
      expect(@album1.price).to eq (3.97)
    end
  end

  describe 'artists' do
    it 'lists the artists on the album, not repeating' do
      expect(@album1.artists).to eq ('coldplay, mumford and sons')
    end
  end

  describe 'is_a_single?' do
    it 'returns true if an album is a single' do
      expect(@album1.is_a_single?).to be(false)
    end
  end
end
