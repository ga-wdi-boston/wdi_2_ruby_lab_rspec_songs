require 'spec_helper'
require_relative '../tunes'

RSpec.describe Track do

  let(:title) { "Blank Space" }
  let(:artists) { "Taylor Swift" }
  let(:duration) { 3 }
  let(:original_price) { 1 }
  let(:current_price) { 1 }
  subject(:track) { Track.new(title, artists, duration, original_price, current_price) }

describe '#initialize' do
  it 'creates a new Track' do
    expect(track).to be_a Track
  end
end

describe '#set_discount' do
  it 'reduces the price by a given discount' do
    expect(track.set_discount(0.2)).to eq 0.8
  end
end

describe '#reset_discount' do
  it 'resets the discount' do
    expect(track.reset_discount).to eq 1
  end
end


end

RSpec.describe Album do

  let(:title) { "1989" }
  let(:tracks) { ["Blank Space", "Shake It Off", "Wonderland", "Bad Blood"] }
  let(:artists) { "Taylor Swift" }
  let(:duration) { 45 }
  let(:price) { 15 }
  subject(:album) { Album.new(title, tracks, artists, duration, price) }

describe '#initialize' do
  it 'creates a new Album' do
    expect(album).to be_a Album
  end
end

describe '#is_a_single?' do
  it 'returns whether or no the album is a single' do
    expect(album.is_a_single?).to be false
  end
end


end

