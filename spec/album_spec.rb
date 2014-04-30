require 'spec_helper'
require_relative '../lib/album'
require_relative '../lib/track'

describe Album do
  before do
    @songs = [
      Track.new("99 Problems", "Jay-Z", 180, 1.00),
      Track.new("Banana Pancakes", "Jack Johnson", 210, 1.49),
      Track.new("Renegade", "Jack Johnson", 90, 0.50)
    ]
  end
  it 'has album title and song list' do

    album = Album.new("The Blueprint", @songs)

    expect(album.title).to eq "The Blueprint"
    expect(album.song_list).to eq @songs
  end

  it 'calculates total runtime of all songs' do
    album = Album.new("The Blueprint", @songs)

    expect(album.runtime).to eq 480
  end

  it 'calculates the total price of the album' do
    album = Album.new("The Blueprint", @songs)

    expect(album.album_price).to eq 2.99
  end

  it 'lists all the unique artists in alphabetical order' do
    album = Album.new("The Blueprint", @songs)

    expect(album.list_artists).to eq ["Jack Johnson", "Jay-Z"]
  end

  it 'can tell if the album is a single' do
    album = Album.new("The Blueprint", @songs)

    expect(album.is_a_single?).to eq false
  end

end

