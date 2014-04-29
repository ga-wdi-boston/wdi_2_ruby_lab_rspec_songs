require 'spec_helper'
require_relative '../lib/track.rb'
describe Track do
  it 'has a title, artist, duration and price' do
    track = Track.new("99 Problems", "Jay-Z", 180, 0.99)
    expect(track.title).to eq "99 Problems"
    expect(track.artist).to eq "Jay-Z"
    expect(track.duration).to eq 180
    expect(track.price).to eq 0.99
  end
end
