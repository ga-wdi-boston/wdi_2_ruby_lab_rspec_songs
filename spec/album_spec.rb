require 'spec_helper'
require 'pry'
require 'byebug'

require_relative '../lib/album'
require_relative '../lib/track'

describe Album do

    subject(:album) { Album.new("A Hard Day's Night",[
      Track.new('I Should Have Known Better', ['The Beatles'], '2:43', 1.29),
      Track.new('If I Fell', ['The Beatles'], '2:19', 1.29),
      Track.new('And I Love Her', ['The Beatles'], '2:30', 1.29),
      Track.new('Tell Me Why', ['The Beatles'], '2:09', 1.29)
      ]) }

  describe '#initialize' do
    it 'creates a new instance of an Album with a title and list of track objects' do
      expect(album).to be_a album
    end
  end

end
