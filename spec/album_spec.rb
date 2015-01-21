require 'spec_helper'
require 'pry'
require 'byebug'

require_relative '../lib/album'
require_relative '../lib/track'

# Has a title and a list of Track objects (order matters)
# Has a duration (combined duration of all tracks)
# Has a price (combined price of all tracks)
# Has a list of artists (combined artists of all tracks in alphabetical order – no duplicates)
# Can determine whether the album is a single (has exactly one track)

RSpec.describe Album do
  it 'it contains a collection of tracks and the total price for the album' do
    album = Album.new
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    album.add_entry(Track.new(:name => Name.new(
      :price => Money.new(0.99, :USD)
    )))
    expect(order.total).to eq(Money.new(9.90, :USD))
  end
end
