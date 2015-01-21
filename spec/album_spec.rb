require_relative '../lib/album'
# require_relative '../lib/track'

RSpec.describe Album do

  describe '#initialize' do
    album = Album.new(title: 'Random Access Memories', tracks: ['Give Life Back to Music', 'The Game of Love', 'Giorgio by Moroder', 'Within', 'Instant Crush', 'Lose Yourself to Dance', 'Touch', 'Get Lucky', 'Beyond', 'Motherboard', 'Fragments of Time', 'Doin\' It Right', 'Contact'], duration: 4464, price: 13.0, artists: ['Thomas Bangalter', 'Jason "Chilly Gonzales" Beck', 'Daryl Braithwaite', 'Julian Casablancas', 'Guy-Manuel de Homem-Christo', 'Todd Imperatrice', 'Paul Jackson, Jr.', 'Noah Lennox', 'Tony Mitchell', 'Giorgio Moroder', 'Garth Porter' 'Stéphane Quême', 'Nile Rodgers', 'Paul Williams'])

    it 'creates a new instance of an Album with a title, tracks, duration, price, and artists' do

      expect(album).to be_a Album
    end
  end

  describe '#single?' do
    album = Album.new(title: 'Random Access Memories', tracks: ['Give Life Back to Music', 'The Game of Love', 'Giorgio by Moroder', 'Within', 'Instant Crush', 'Lose Yourself to Dance', 'Touch', 'Get Lucky', 'Beyond', 'Motherboard', 'Fragments of Time', 'Doin\' It Right', 'Contact'], duration: 4464, price: 13.0, artists: ['Thomas Bangalter', 'Jason "Chilly Gonzales" Beck', 'Daryl Braithwaite', 'Julian Casablancas', 'Guy-Manuel de Homem-Christo', 'Todd Imperatrice', 'Paul Jackson, Jr.', 'Noah Lennox', 'Tony Mitchell', 'Giorgio Moroder', 'Garth Porter' 'Stéphane Quême', 'Nile Rodgers', 'Paul Williams'])

    it 'returns true if album contains exactly 1 track' do

      expect(album.single?).to be false

      album = Album.new(title: 'Get Lucky (Daft Punk Remix)', tracks: ['Get Lucky (Daft Punk Remix)'], duration: 248, price: 1.0, artists: ['Thomas Bangalter', 'Guy-Manuel de Homem-Christo', 'Nile Rodgers', 'Pharrell Williams'])

      expect(album.single?).to be true
    end
  end

end
