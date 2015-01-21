require 'spec_helper'
require 'byebug'

require_relative '../lib/album'

RSpec.describe Album do

  before(:all) do
    #@track is our instance variable
    @album = Album.new("Electric Ladyland", "Jimi Hendrix", 45, 12.00)
  end

    describe '#find_album_title' do
    it 'return the title of the album' do
      expect(@album.find_album_title).to eq "Electric Ladyland"
    end
  end

end

