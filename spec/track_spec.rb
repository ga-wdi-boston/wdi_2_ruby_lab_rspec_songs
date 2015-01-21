require_relative '../lib/track'

RSpec.describe Track do

  describe '#initialize' do
    track = Track.new(title: 'Ruby Soho',artists:  ['Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman'],  duration: 157, price: 99)
    it 'creates a new instance of a Track with a title, artists, duration, and price' do
      expect(track).to be_a Track
    end
  end

end
