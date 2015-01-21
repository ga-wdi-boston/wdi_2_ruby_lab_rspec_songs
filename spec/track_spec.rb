--color
--require spec_helper
require_relative '../lib/track'

RSpec.describe Track do
  @track = Track.new(
  @name = 'Ruby Soho',
  @artists = ['Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman']
  @duration = '1.50'
  @price = .99)

  @track2 = Track.new(
  @name = 'Hell No',
  @artists = ['Sondre Lerche & Regina Spektor]'
  @duration = '4.50'
  @price = .99)

  @track3 = Track.new(
  @name = 'Diane',
  @artists = ['Mike Doughty']
  @duration = '2.00'
  @price = .99)
end

describe '#initialize' do
  it 'creates a new instance of a Track with name, artists (in an array), duration, and price'  do
  expect(track).to be_a Track
  end

describe '#set_discount' do
  # discount = 30
  # discount_price = price - price * (discount/100)
  it 'discounts the price of a track by a given percentage'do
   expect(@track.reduce_price(0.5)).to eq (0.495)
   expect(@track2.reduce_price(0.75)).to eq (0.2475)
  end
end

describe 'reset_discount' do
it 'resets the price of the track back to the original price' do
  expect(@track.reset_discount).to eq (0.99)
  end
end

end



RSpec.describe Album do
  @album = Album.new(
  @title = 'All the Gems',
    @tracks = [
    @track = Track.new(
    @name = 'Ruby Soho',
    @artists = ['Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman']
    @duration = '1.50'
    @price = .99)

    @track2 = Track.new(
    @name = 'Hell No',
    @artists = ['Sondre Lerche, Regina Spektor]'
    @duration = '4.50'
    @price = .99)

    @track3 = Track.new(
    @name = 'Diane',
    @artists = ['Mike Doughty']
    @duration = '2.00'
    @price = .99)
      ]
    )
end

  describe 'initialize' do
    it 'initializes a new album with a title, artists, duration, and price' do
    expect(@album).to be_a (Album)
      end
  end

  describe 'duration' do
    it 'calculates the duration of the album' do
      expect(@album.duration).to eq ('8:00')
    end
end

  describe 'price' do
    it 'calculates the price of the album' do
      expect(@album.price).to eq (3.97)
    end
  end

  describe 'artists' do
    it 'lists the artists on the album' do
      expect(@album.artists).to eq ('Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman', 'Sondre Lerche, Regina Spektor, Mike Doughty')
    end
  end

  describe 'is_single?' do
    it 'returns true if an album is a single' do
      expect(@album.is_single?).to be(false)
    end
  end
end



#   let(:title) {'All The Gems'}
#   let(:combined_artists) {['Tim Armstrong', 'Lars Frederiksen', 'Matt Freeman']}
#   let(:combined_duration) {1.57}
#   let(:combined_price) {0.99}

# end

# describe '#initialize' do
#   it 'creates a new instance of a Album with title, combined_duration, combined_price, combined_artists_az, uniqueness'  do
#   expect(album).to be_a Album
#   end


# # * Has a title and a list of `Track` objects (order matters)
# # * Has a duration (combined duration of all tracks)
# # * Has a price (combined price of all tracks)
# # * Has a list of artists (combined artists of all tracks in alphabetical order &ndash; *no duplicates*)
# # * Can determine whether the album is a single (has exactly one track)


