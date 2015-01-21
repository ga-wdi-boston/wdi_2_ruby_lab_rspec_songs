require_relative '../lib/album'


RSpec.describe Album do

  before (:all) do
  @title = "100 Best Classical Jammz"
  @tracks = [
    Track.new(title: "Sonata Lugubrio", artist: "Beewolfmart", duration: "5:00", price: 1.00),
    Track.new(title: "Concerto CiaoBella", artist: "BBrahamas", duration: "25:00", price: 1.00)
  ]
  @album = Album.new(title: @title, tracks: @tracks)
  end

  describe '#initialize' do
    it 'initializes the object Album' do
      expect(Album.new).to be_a Album
    end
  end

  describe '#duration' do
    it 'returns the total length of the album' do
      expect(@album.duration).to eq "30:00"
    end
  end



end

