require 'spec_helper'
require 'pry'
require 'byebug'

require_relative '../lib/track'

RSpec.describe Track do
  it 'it lists all the tracks and their individual prices, by respected artist' do
    track = Track.new
    track.add_entry(Artist.new(:name => Name.new(
      :price => Money.new(1.11, :USD)
    )))
    track.add_entry(Artist.new(:name => Name.new(
      :price => Money.new(2.22, :USD)
    )))
    expect(order.total).to eq(Money.new(5.55, :USD))
  end
end
