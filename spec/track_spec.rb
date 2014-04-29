require 'spec_helper'
require_relative '../lib/track.rb'
describe Track do
  it 'has a title, artist, duration and price' do
    track = Track.new("99 Problems", "Jay-Z", 180, 1.00)
    expect(track.title).to eq "99 Problems"
    expect(track.artist).to eq "Jay-Z"
    expect(track.duration).to eq 180
    expect(track.price).to eq 1.00
  end

  it 'reduces song price by a given percentage' do
    track = Track.new("99 Problems", "Jay-Z", 180, 1.00)
    expect(track.discount(0.8)).to eq 0.8
  end

  it 'resets cost of song to original price' do
    track = Track.new("99 Problems", "Jay-Z", 180, 1.00)
    expect(track.reset).to eq 1.00
  end
end
