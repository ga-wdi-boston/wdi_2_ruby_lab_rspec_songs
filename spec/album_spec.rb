require_relative '../lib/album'


RSpec.describe Album do
  describe '#initialize' do
    it 'creates a new instance of a Track with a title, artists, duration' do
      album = Album.new("Twinkey Dinks", [
        Track.new("Foursquare", ["Young Jim", "Crankshaft"], 206, 1),
        Track.new("Puddle Jumping", ["Young Jim", "Crankshaft"], 345, 1),
        Track.new("Fudge Your Mom", ["Young Jim", "Crankshaft"], 263, 1)])
      expect(album).to be_a Album
    end
  end

  describe '#duration' do
    it 'returns the combined duration of all of the tracks in seconds' do
      album = Album.new("Twinkey Dinks", [
        Track.new("Foursquare", ["Young Jim", "Crankshaft"], 206, 1),
        Track.new("Puddle Jumping", ["Young Jim", "Crankshaft"], 345, 1),
        Track.new("Fudge Your Mom", ["Young Jim", "Crankshaft"], 263, 1)])
      expect(album.duration).to eq 814
    end
  end

  describe '#price' do
   it 'returns the combined price of all of the tracks in seconds' do
    album = Album.new("Twinkey Dinks", [
        Track.new("Foursquare", ["Young Jim", "Crankshaft"], 206, 1),
        Track.new("Puddle Jumping", ["Young Jim", "Crankshaft"], 345, 1),
        Track.new("Fudge Your Mom", ["Young Jim", "Crankshaft"], 263, 1)])
      expect(album.price).to eq 3
    end
  end

  describe '#artists' do
   it 'returns the artists on the album with no repeats' do
    album = Album.new("Twinkey Dinks", [
        Track.new("Foursquare", ["Young Jim", "Crankshaft"], 206, 1),
        Track.new("Puddle Jumping", ["Young Jim", "Crankshaft"], 345, 1),
        Track.new("Fudge Your Mom", ["Young Jim", "Crankshaft"], 263, 1)])
      expect(album.artists).to eq ["Young Jim", "Crankshaft"]
    end
  end

  describe '#is_single?' do
   it 'returns true if the album is a single' do
    album1 = Album.new("Twinkey Dinks", [
        Track.new("Foursquare", ["Young Jim", "Crankshaft"], 206, 1),
        Track.new("Puddle Jumping", ["Young Jim", "Crankshaft"], 345, 1),
        Track.new("Fudge Your Mom", ["Young Jim", "Crankshaft"], 263, 1)])
    album2 = Album.new("Twinkey Dinks", [
        Track.new("Foursquare", ["Young Jim", "Crankshaft"], 206, 1)])
      expect(album1.is_single?).to eq false
      expect(album2.is_single?).to eq true
    end
  end
end

