require 'byebug'
require 'pry'
require 'spec_helper'

require_relative '../lib/album'

describe Album do

  before(:each) do
    test_nesting = [
      Track.new({title: "Sweet Georgia Brown", artist: "Django and Ben Bernie", duration: 178, price: 4.00}),
      Track.new({title: "Bugle Call Rag", artist: "Django and Billy Meyers", duration: 160, price: 0.99}),
      Track.new({title: "Between the Devil and the Deep Blue Sea", artist: "Django and Harold Arlen", duration: 175, price: 1.99}),
      Track.new({title: "I Got Rhythm", artist: "Django and George Gershwin", duration: 132, price: 1.99})]

      @album = Album.new("Django and His American Friends",test_nesting)
  end

  describe '#track_list' do
    it 'Outputs the album\'s track list' do
      expect(@album.track_list).to eq ["Sweet Georgia Brown", "Bugle Call Rag", "Between the Devil and the Deep Blue Sea", "I Got Rhythm"]
    end
  end

  describe '#total_duration' do
    it 'Totals length of album' do
      expect(@album.total_duration).to eq 645
    end
  end

end

