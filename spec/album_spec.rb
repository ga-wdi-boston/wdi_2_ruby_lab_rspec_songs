require 'spec_helper'
require 'pry'
require 'byebug'

require_relative '../lib/album'

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
