require 'spec_helper'
require 'pry'

require_relative '../lib/album'

describe Album do

  before(:all) do
    @track1 = Track.new(title: 'Uptown Funk', artist: 'Mark Ronson', duration: 270, price: 1.50)
    @track2 = Track.new(title: 'Thinking Out Loud', artist: 'Ed Sheeran', duration: 281, price: 2.00)
    @track3 = Track.new(title: 'Lips Are Movin', artist: 'Meghan Trainor', duration: 182, price: 1.75)
    @track4 = Track.new(title: 'Blank Space', artist: 'Taylor Swift', duration: 231, price: 1.50)
    @track5 = Track.new(title: 'Take Me To Church', artist: 'Hozier', duration: 241, price: 2.00)
    @track6 = Track.new(title: 'Shake It Off', artist: 'Taylor Swift', duration: 219, price: 1.25)
    @track6 = Track.new(title: 'Centuries', artist: 'Fall Out Boy', duration: 228, price: 2.25)
    @track_list = [[@track1], [@track2], [@track3]]
    @duration_total = [@track1.duration, @track2.duration, @track3.duration].reduce(:+)
    @artists = [@track1.artist, @track2.artist, @track3.artist].uniq.sort
    @price = [@track1.price, @track2.price, @track3.price].reduce(:+)

    # @my_album = Album.new(title: 'Happy Fun Times',tracks: @track_list, duration_total: @duration_total, combined_price: @price, artists: @artists)
    @my_album = Album.new(title: 'Happy Fun Times', tracks: @track_list, duration_total: @duration_total, combined_price: @price, artists: @artists)
  end

  # write the initialization method to pass this expectation
  describe '#initialize' do
    it 'creates new instances of the class Album' do
      expect(@my_album.class).to eq Album
    end
  end

  # Determines if the album has only one track - is a single
  describe '#is_single?' do
    it 'returns a boolean value if the album has only one track' do
      expect(@my_album.is_single?).to eq true
    end
  end

end
