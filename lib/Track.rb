class Track

# attr_accessor :name, :artist, :duration, :price

def initialize(name, artists, duration, price)
   unless name.is_a?(String) && artist.is_a?(String) && duration.is_a?(String) && price.is_a?(Float)
    raise ArgumentError.new("Please enter valid track details")
    end
  @name = name
  @artists = artists
  @duration = duration
  @price = price

end

def set_discount(discount)
  unless discount.is_a?(Float) && discount <= 100
    raise ArgumentError.new("Please enter a valid discount")
  end
  @start_price = @price
  @price *= ((100 - discount)/100)


def reset_discount
  @price = @start_price
end

end

class Album

# attr_accessor :title, :tracks

def initialize(name, artists, duration, price)
  unless title.is_a?(String) && combined_duration > 0
    raise ArgumentError.new("Please enter a valid title and tracks")
  end
  @title = title
  @combined_artists = combined_artists
  @combined_duration = combined_duration
  @combined_price = combined_price
end

#Borrowed code, haven't figured this out
#  def duration
#   combined_duration = tracks.map{|track| track.duration.split(':')}
#   minutes = times.map{|time| time[0].to_i}.reduce(:+)
# +    seconds = times.map{|time| time[1].to_i}.inject(:+)
# +    seconds_to_minutes = seconds.divmod(60)
# +    total_minutes = minutes + seconds_to_minutes[0]
# +    total_seconds = seconds + seconds_to_minutes[1]
# +    time_array = []
# +    time_array << total_minutes << seconds_to_minutes[1]
# +    total_time = time_array.join(":")
# +    total_time.to_s


#   def price
#   tracks.map{|track| track.price}.inject(:+).round(2)
#   end

#   def artists
#   tracks.map {|track| track.artists}.uniq.sort.join(', ')
#   end

  def is_single?
  tracks.length == 1
  end

end

end
