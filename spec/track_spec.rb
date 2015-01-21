require 'spec_helper'
require_relative '..lib/track.rb'

describe Track do

describe '#initialize' do
  track = Track.new('Aint no mountain high enough', ['Marvin Gaye', 'Tammi Terrel'],  228, '1')
    it 'creates new instance of Track with title, artist, duration, and price' do
    expect(track).to be_a Track
  end
end

describe '#set_discount' do
  it 'decreases the price by the percentage given' do
    expect(track.set_discount(0.02)).to eq 0.8
  end
end

describe '#reset_discount' do
  it 'resets the discount' do
    expect(track.reset_discount).to eq 1
  end
end


end
