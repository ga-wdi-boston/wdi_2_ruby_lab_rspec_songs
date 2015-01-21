require './spec/spec_helper.rb'
require_relative '../lib/track'

RSpec.describe Track do
  before(:each) do
    track_info = {
      :artist => "Beatles",
        :title => "Yesterday",
        :duration => "3:30",
        :price => 1.00,


        :artist => "Kanye",
        :title => "Only One",
        :duration => "4:00",
        :price => 1.50,


        :artist => "Black Keys",
        :title => "Everlasting Light",
        :duration => "3:00",
        :price => 1.00
    }


    @track = Track.new(track_info)
  end

#Has a title, list of artists (order doesn't matter), duration, and price
  describe '#has_info' do
    it 'checks to ensure title, list of artists, duration, and price' do
      expect(@track.has_info).to be true
    end
  end




end
