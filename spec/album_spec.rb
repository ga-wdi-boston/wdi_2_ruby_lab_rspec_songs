require './spec/spec_helper.rb'
require_relative '../lib/album'

RSpec.describe Album do
  before(:each) do
    test_album = [
      "Awesome Album",
      {
        title: "pop",
        artist: "rapper",
        duration: 3.2,
        price: 1.0
        },
      {
        title: "lock",
        artist: "another rapper",
        duration: 4.0,
        price: 1.0
        },
      {
        title: "and drop it",
        artist: "Huey",
        duration: 4.5,
        price: 1.0
        }
    ]
    @album = Album.new(test_album)
  end

  describe '#duration' do
    it 'lists the duration of the entire album' do
      expect(@album.duration).to eq 11.7
    end
  end

  describe '#price' do
    it 'adds up the price of each track' do
      expect(@album.price).to eq 3.0
    end
  end

  describe '#list_of_artists' do
    it 'lists all the artists on the album' do
      expect(@album.list_of_artists).to eq ["another rapper", "Huey", "rapper"]
    end
  end

  describe '#is_single?' do
    it 'lists if the album only has one track' do
      expect(@album.is_single?).to eq false
    end
  end
end

