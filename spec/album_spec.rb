require 'spec_helper'
require 'pry-byebug'


require_relative '../lib/album'

describe Album do

  before(:all) do
    @album1 = Album.new(tracks: ["Yo", "Hi"], duration: '45:30', price: '10.99', artist: ["bob", "pat"])
  end


  describe '#initialize' do
    it "Has a title and a list of Track objects (order matters)" do
      expect(@album1.class).to eq Album
    end
  end

  # describe '#total_duration' do
  #   it 'Has a duration (combined duration of all tracks)' do
  #     expect(@album1.total_duration
  #   end
  # end

  # describe '#total_price' do
  #   it 'Has a price (combined price of all tracks)' do
  #     expect(@album1.total_price).to eq '10.99'
  #   end
  # end

  # describe '#artist_list' do
  #   it 'Has a list of artists (combined artists of all tracks in alphabetical order – no duplicates)' do
  #     expect(@album1.artist_list)
  #   end
  # end

  # describe '#single_album?' do
  #   it 'Can determine whether the album is a single (has exactly one track)' do
  #     expect(@album1.single_album?)
  #   end
  # end

end

