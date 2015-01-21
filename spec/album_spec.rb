require_relative '../lib/album'

RSpec.describe Album do

  describe '#initialize' do
    album = Album.new(title: 'Random Access Memories', tracks: ['Give Life Back to Music', 'The Game of Love', 'Giorgio by Moroder', 'Within', 'Instant Crush', 'Lose Yourself to Dance', 'Touch', 'Get Lucky', 'Beyond', 'Motherboard', 'Fragments of Time', 'Doin\' It Right', 'Contact'], duration: 4464, price: 1287, artists: ['Thomas Bangalter', 'Jason "Chilly Gonzales" Beck', 'Daryl Braithwaite', 'Julian Casablancas', 'Guy-Manuel de Homem-Christo', 'Todd Imperatrice', 'Paul Jackson, Jr.', 'Noah Lennox', 'Tony Mitchell', 'Giorgio Moroder', 'Garth Porter' 'Stéphane Quême', 'Nile Rodgers', 'Paul Williams'])
    it 'creates a new instance of an Album with a title, tracks, duration, price, and artists' do
      expect(album).to be_a Album
    end
  end

end
