require 'spec_helper'
require_relative '../lib/track'

RSpec.describe Track do
  before(:each) do
    @track = Track.new (
      "A Light That Never Comes", ["Linkin Park", "Steve Aoki"], 3.49, 1.00)
    end


  describe '#initialize' do
    it 'creates a new instance of a track' do
    expect(@track).to be_a Track
    end
  end

  describe '#title' do
   it 'gets the title of the track' do
    expect(@track.title).to eq "A Light That Never Comes"
    end
  end

   describe '#list_of_artists' do
   it 'gets the list of artists of the track' do
    expect(@track.list_of_artists).to eq ["Linkin Park", "Steve Aoki"]
    end
  end

   describe '#duration' do
   it 'gets the duration of the track' do
    expect(@track.duration).to eq 3.49
    end
  end

   describe '#price' do
   it 'gets the price of the track' do
    expect(@track.price).to eq 1
    end
  end

  describe '#set_discount(applying multiple discounts)' do
   it 'gets the discounted price of the track according to the percent discount defined. This will reset the price. Discounts will be applied on original price only' do
    expect(@track.set_discount(0.30)).to be_within(0.1).of(0.70)
    expect(@track.price).to be_within(0.1).of(0.70)

    expect(@track.set_discount(0.10)).to be_within(0.1).of(0.90)
    expect(@track.price).to be_within(0.1).of(0.90)

    expect(@track.set_discount(0.50)).to be_within(0.1).of(0.50)
    expect(@track.price).to be_within(0.1).of(0.50)
    end
  end

  describe '#reset_discount' do
   it 'resets the original price of the track' do
    expect(@track.reset_discount).to eq 1.00
    end
  end


end
