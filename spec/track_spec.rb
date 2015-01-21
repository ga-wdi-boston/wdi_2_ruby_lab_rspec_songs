require 'spec_helper'
require 'pry'
require 'byebug'

require_relative '../lib/track'

RSpec.describe Track do
  it 'it lists all the tracks and their individual prices, by respected artist' do
    track = Track.new({title:'Invincible'},{artist:'Adelitas Way'},{duration:'3:10'},{price:'0.99'})
    track = Track.new({title:'Scream'},{artist:'Adelitas Way'},{duration:'3:34'},{price:'0.99'})
    track = Track.new({title:'So Cold'},{artist:'Breaking Benjamin'},{duration:'3:56'},{price:'0.99'})
    track = Track.new({title:'Sooner or Later'},{artist:'Breaking Benjamin'},{duration:'3:24'},{price:'0.99'})
    track = Track.new({title:'The Phoenix'},{artist:'Fall Out Boy'},{duration:'4:04'},{price:'0.99'})
    track = Track.new({title:'Centuries'},{artist:'Fall Out Boy'},{duration:'3:51'},{price:'0.99'})
    track = Track.new({title:'Alive and Kicking'},{artist:'NonPoint'},{duration:'3:59'},{price:'0.99'})
    track = Track.new({title:'Broken Down'},{artist:'Sevendust'},{duration:'3:23'},{price:'0.99'})
    track = Track.new({title:'Separate'},{artist:'Sevendust'},{duration:'3:41'},{price:'0.99'})
    track = Track.new({title:'Karma'},{artist:'Sevendust'},{duration:'3:43'},{price:'0.99'})
  end
end

#Has a "set discount" method that reduces the price by a given percentage
#Has a "reset discount" method that restores the price to its original value
describe '#set_discount' do
    it 'reduces the price by a given percentage' do
      expect(@track.set_discount).to eq [0.99 * 0.1 == amount_to_subtract]
      expect(@track.set_discount).to eq [0.99 - amount_to_subtract]
    end
  end

  describe '#reset_discount' do
    it 'restores the price to its original value'  do
      expect(@track.reset_discount).to eq ['0.99']
    end
  end
