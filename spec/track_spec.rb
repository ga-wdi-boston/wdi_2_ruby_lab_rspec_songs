require 'spec_helper'
require 'pry'
require 'byebug'

require_relative '../lib/track'

RSpec.describe Track do
  it 'it lists all the tracks and their individual prices, by respected artist' do
    track = Track.new('Invincible', ['Adelitas Way'], '3:10', '0.99')
    track = Track.new('Scream', ['Adelitas Way'], '3:34', '0.99')
    track = Track.new('So Cold', ['Breaking Benjamin'], '3:56', '0.99')
    track = Track.new('Sooner or Later', ['Breaking Benjamin'], '3:24', '0.99')
    track = Track.new('The Phoenix', ['Fall Out Boy'], '4:04', '0.99')
    track = Track.new('Centuries', ['Fall Out Boy'], '3:51', '0.99')
    track = Track.new('Alive and Kicking', ['NonPoint'], '3:59', '0.99')
    track = Track.new('Broken Down', ['Sevendust'], '3:23', '0.99')
    track = Track.new('Separate', ['Sevendust'], '3:41', '0.99')
    track = Track.new('Karma', ['Sevendust'], '3:43', '0.99')
  end
end

#Has a "set discount" method that reduces the price by a given percentage
#Has a "reset discount" method that restores the price to its original value
describe '#set_discount' do
    it 'reduces the price by a given percentage' do
      expect(@track.set_discount).to eq [0.99 * 0.1 - difference]
    end
  end

  describe '#reset_discount' do
    it 'restores the price to its original value'  do
      expect(@track.reset_discount).to eq ['0.99']
    end
  end
