require 'byebug'
require 'pry'
require 'spec_helper'

require_relative '../lib/album'

describe Album do

  before(:each) do
    test_nesting = [
      Track.new({title: "Sweet Georgia Brown", artist: "Django Reinhardt,Ben Bernie", duration: 178, price: 4.00}),
      Track.new({title: "Bugle Call Rag", artist: "Django Reinhardt,Billy Meyers", duration: 160, price: 0.99}),
      Track.new({title: "Between the Devil and the Deep Blue Sea", artist: "Django Reinhardt,Harold Arlen", duration: 175, price: 1.99}),
      Track.new({title: "I Got Rhythm", artist: "Django Reinhardt,George Gershwin", duration: 132, price: 1.99})]

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

  describe '#total_price' do
    it 'Calculates to price' do
      expect(@album.total_price).to eq 8.97
  end
end

  describe '#all_artists' do
    it 'List all contributing artists' do
      expect(@album.all_artists).to eq ["Django Reinhardt","Ben Bernie","Billy Meyers","Harold Arlen","George Gershwin"]
    end
  end

  describe '#single_track?' do
    it 'Boolean if it is a single track album' do
      expect(@album.single_track?).to eq false
      end
    end
end

