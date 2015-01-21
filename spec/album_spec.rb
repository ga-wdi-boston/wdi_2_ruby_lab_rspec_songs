require_relative '../lib/album'
require_relative '../lib/track'
require 'pry-byebug'

describe Album do
  before(:all) do
    @track0 = Track.new("Title", ["Drtist1", "Artist2", "Artist3"], "4:33", 0.99)
    @track1 = Track.new("Tlea", ["Brt1", "Artist2", "Brt3"], "1:33", 1.99)
    @track2 = Track.new("Tcvle", ["Crt11", "Crt22", "Artist3"], "9:33", 2.99)
    @album = Album.new("This Album", [@track0, @track1, @track2])
    @album2 = Album.new("That Album", [@track2])
  end


  describe '#initialize' do
    it 'creates new instances of the class Album' do
    expect(@album.class).to eq Album
    end
  end

  describe '#duration' do
    it 'returns the total duration of all tracks' do
      expect(@album.duration).to eq "15:39"
    end
  end

  describe '#price' do
    it 'returns the total price of all tracks' do
      expect(@album.price).to eq 5.97
    end
  end

  describe '#artist_list' do
    it 'returns a non-reptitive list of artists in alphabetical order' do
      expect(@album.artist_list).to eq ["Artist2", "Artist3", "Brt1", "Brt3", "Crt11", "Crt22", "Drtist1"]
    end
  end

  describe '#single?' do
    it 'returns a boolean telling if the album is a single' do
      expect(@album.single?).to eq false
      expect(@album2.single?).to eq true
    end
  end

  describe 'AlbumError' do
    it 'returns an error if an album has zero tracks.' do
      expect(Album.new("Hi", [])).to raise_error AlbumError
      expect(Album.new("Bye", [@track1])).to_not raise_error AlbumError
    end
  end
end


