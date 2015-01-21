require 'spec_helper.rb'
require 'pry'
require 'byebug'

require_relative '../lib/album'
require_relative '../lib/track.rb'

RSpec.describe Album do

  subject(:album){Album.new('1989')}

  describe '#initialize' do
    it 'creates a new instance of the Album class' do
      expect(album).to be_a Album
    end
  end
  describe '#list_of_tracks' do
    it 'create a array to hold your tracks' do
      my_album = Album.new([])
      expect(my_album.list_of_tracks).to eq 12
    end
  end


end













# describe '#sum_of_numeric_elements' do
#     it 'sums all Float and Fixnum elements' do
#       expect(@array.sum_of_numeric_elements).to be 41.1
#     end
#   end
